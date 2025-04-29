import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../profile/presentation/pages/widgets/custom_app_bar_profile.dart';
import 'widgets/custom_order_success_body.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait = 
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBarProfile(
          text: 'طلب نجاح',
          fontSize: isPortrait ?  20.sp : 10.sp,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        flexibleSpace: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Colors.grey[300],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: CustomOrderSuccessBody(),
      ),
    );
  }
}
