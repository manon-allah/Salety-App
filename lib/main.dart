import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salety_update/features/home/presentation/manager/navigate/navigate_cubit.dart';
import 'package:salety_update/features/profile/presentation/manager/cubit/profile_cubit.dart';
import 'core/di/di.dart';
import 'core/services/caching.dart';
import 'core/widgets/bottom_nav_bar_widget.dart';
import 'features/auth/presentation/manager/cubit/auth_cubit.dart';
import 'features/auth/presentation/pages/log_in_page.dart';
import 'features/auth/presentation/pages/sign_up_page.dart';
import 'features/first/presentation/pages/first_page.dart';
import 'features/home/presentation/manager/get_product/get_product_cubit.dart';
import 'features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'features/notify/presentation/pages/notify_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await init();
  await CacheHelper.cachIntialization();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('ar')],
      path: 'assets/lang',
      fallbackLocale: Locale('en'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var token = CacheHelper.getData(key: 'auth_token');
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => NavigateCubit()),
            BlocProvider(create: (context) => AuthCubit()),
            BlocProvider(create: (context) => ProfileCubit()),
            BlocProvider(create: (context) => HomeCubit()),
            BlocProvider(create: (context) => GetProductCubit()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Salety Demo',
            theme: ThemeData(
              fontFamily: 'Cairo',
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            // home: FirstPage(),
            initialRoute: (token != null ? 'bottom_nav_bar' : 'first_page'),
            routes: {
              'bottom_nav_bar': (context) => const BottomNavBarWidget(),
              'sign_up': (context) => const SignUpPage(),
              'login': (context) => const LogInPage(),
              'first_page': (context) => const FirstPage(),
              '/notification_page': (context) => const NotifyPage(),
            },
          ),
        );
      },
    );
  }
}
