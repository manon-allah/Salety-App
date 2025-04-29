import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_detail_container.dart';
import 'custom_paid_button.dart';

class CustomSideNavBar extends StatelessWidget {
  final BuildContext context;
  const CustomSideNavBar({
    super.key,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      height: MediaQuery.sizeOf(context).height,
      color: Colors.grey.shade300,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 10.w,
        ),
        child: Column(
          children: [
            const CustomDetailsContainer(),
            SizedBox(
              height: 25.h,
            ),
            const CustomPaidButton(),
          ],
        ),
      ),
    );
  }
}
