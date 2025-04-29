import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDetailsContainer extends StatelessWidget {
  const CustomDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: isPortrait ? 130.h : 200.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          right: 20.w,
          left: 10.w,
          top: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'البنود',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isPortrait ? 20.sp : 7.sp,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Text(
                      'المجموع الفرعي',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isPortrait ? 20.sp : 7.sp,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Text(
                      'رسوم التوصيل',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isPortrait ? 20.sp : 7.sp,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    SizedBox(
                      height: isPortrait ? 10.h : 50.h,
                    ),
                    Text(
                      'الإجمالي',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isPortrait ? 24.sp : 10.sp,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '4',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isPortrait ? 20.sp : 7.sp,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Text(
                      '100.00 \$',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isPortrait ? 20.sp : 7.sp,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Text(
                      'Free',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isPortrait ? 20.sp : 7.sp,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    SizedBox(
                      height: isPortrait ? 10.h : 50.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'SAR ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: isPortrait ? 24.sp : 10.sp,
                          ),
                        ),
                        Text(
                          ' 100.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: isPortrait ? 24.sp : 10.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
