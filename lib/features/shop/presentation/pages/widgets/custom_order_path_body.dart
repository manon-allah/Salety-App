import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_container_order.dart';
import 'custom_order_tracking.dart';

class CustomOrderPathBody extends StatelessWidget {
  const CustomOrderPathBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25.w,
      ),
      child: isPortrait
          ? Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                const CustomContainerOrder(),
                SizedBox(
                  height: 20.h,
                ),
                const CustomOrderTracking(),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomContainerOrder(),
                SizedBox(
                  width: 25.h,
                ),
                const CustomOrderTracking(),
              ],
            ),
    );
  }
}
