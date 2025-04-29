import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/favorite/presentation/pages/favorite_page.dart';
import '../../features/home/presentation/manager/navigate/navigate_cubit.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/notify/presentation/pages/notify_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/search/presentation/pages/search_page.dart';
import '../services/caching.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  late PageController pageController;
  final bool canPop = false;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 2);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigateCubit, NavigateState>(
      builder: (context, state) {
        final currentIndex = context.read<NavigateCubit>().currentIndex;
        final token = CacheHelper.getData(key: 'auth_token');
        return PopScope(
      canPop: canPop,
      onPopInvokedWithResult: (bool didPop, dynamic result) async {
        if (!didPop) {
          final shouldExit = await showExitConfirmationDialog();
          if (shouldExit && context.mounted) {
            SystemNavigator.pop();
          }
        }
      },
          child: Scaffold(
            body: PageView(
              controller: pageController,
              onPageChanged: onPageChanged,
              physics: const NeverScrollableScrollPhysics(),
              children:  [
                const SearchPage(),
                const FavoritePage(),
                const HomePage(),
                const NotifyPage(),
                ProfilePage(
                  token: token,
                  ),
              ],
            ),
            bottomNavigationBar: Directionality(
              textDirection: TextDirection.ltr,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      double width = constraints.maxWidth;
                      double iconSize = width > 400 ? 30.0 : 24.0;
          
                      return BottomNavigationBar(
                        currentIndex: 0,
                        onTap: navigationTapped,
                        unselectedItemColor: Colors.grey,
                        type: BottomNavigationBarType.fixed,
                        items: [
                          BottomNavigationBarItem(
                            icon: Icon(
                              Icons.search_rounded,
                              color: currentIndex == 0 ? Colors.black : Colors.grey,
                              size: iconSize,
                            ),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                              Icons.favorite_border_rounded,
                              color: currentIndex == 1 ? Colors.black : Colors.grey,
                              size: iconSize,
                            ),
                            label: '',
                          ),
                          const BottomNavigationBarItem(
                            icon: SizedBox.shrink(),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                              Icons.notifications_none_rounded,
                              color: currentIndex == 3 ? Colors.black : Colors.grey,
                              size: iconSize,
                            ),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                              Icons.person_2_outlined,
                              color: currentIndex == 4 ? Colors.black : Colors.grey,
                              size: iconSize,
                            ),
                            label: '',
                          ),
                        ],
                      );
                    },
                  ),
                  Positioned(
                    top: -20,
                    left: MediaQuery.of(context).size.width / 2 - 22,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          context.read<NavigateCubit>().navigateTo(2);
                          pageController.jumpToPage(2);
                        });
                      },
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          double width = constraints.maxWidth;
                          double circleAvatarSize = width > 400 ? 30.0 : 40.0;
          
                          return CircleAvatar(
                            radius: circleAvatarSize,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: circleAvatarSize - 5,
                              backgroundColor: const Color(0xFF86953e),
                              child: Image.asset(
                                'assets/logo.png',
                                width: 30,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<bool> showExitConfirmationDialog() async {
    final didConfirm = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        title: const Text('تأكيد الخروج'),
        content: const Text('هل تريد مغادرة التطبيق؟'),
        actions: [
          TextButton(onPressed: () => Navigator.of(ctx).pop(false), child: const Text('لا')),
          TextButton(onPressed: () => Navigator.of(ctx).pop(true),  child: const Text('نعم')),
        ],
      ),
    );
    return didConfirm ?? false;
  }

  onPageChanged(int pageNumber) {
    context.read<NavigateCubit>().navigateTo(pageNumber);
  }

  navigationTapped(int pageNum) {
    pageController.jumpToPage(pageNum);
    context.read<NavigateCubit>().navigateTo(pageNum);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
