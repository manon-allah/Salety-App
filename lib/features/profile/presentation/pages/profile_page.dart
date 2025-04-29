import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home/presentation/manager/navigate/navigate_cubit.dart';
import '../manager/cubit/profile_cubit.dart';
import 'widgets/custom_app_bar_profile.dart';
import 'widgets/custom_profile_body.dart';

class ProfilePage extends StatefulWidget {
  final String token;
  const ProfilePage({
    super.key,
    required this.token,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  late final getDataCubit = context.read<ProfileCubit>();

  @override
  void initState() {
    super.initState();
    getDataCubit.getDataProfile(widget.token);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: CustomAppBarProfile(
          onTap: () {
            context.read<NavigateCubit>().currentIndex = 2;
            // context.read<NavigateCubit>().navigateTo(2);
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const HomePage(),
            //   ),
            // );
          },
        ),
        flexibleSpace: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Colors.grey[300],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      body: const SingleChildScrollView(
        child: CustomProfileBody(),
      ),
    );
  }
}
