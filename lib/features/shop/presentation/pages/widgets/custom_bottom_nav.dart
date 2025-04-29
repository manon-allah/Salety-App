
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_detail_container.dart';
import 'custom_paid_button.dart';

class CustomBottomNav extends StatelessWidget {
  final BuildContext context;
  const CustomBottomNav({
    super.key,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 200.h,
      color: Colors.grey.shade300,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 10.h,
        ),
        child: Column(
          children: [
            const CustomDetailsContainer(),
            SizedBox(
              height: 7.h,
            ),
            const CustomPaidButton(),
          ],
        ),
      ),
    );
  }
}
