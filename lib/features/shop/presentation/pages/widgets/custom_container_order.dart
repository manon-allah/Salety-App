import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerOrder extends StatelessWidget {
  const CustomContainerOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      width: isPortrait ? MediaQuery.sizeOf(context).width : 140.w,
      height: isPortrait ? 100.h : 130.h,
      padding: EdgeInsets.only(
        left: isPortrait ? 10.w : 2.w,
        right: isPortrait ? 10.w : 8.w,
        top: 10.h,
        bottom: 10.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF1bad7c),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'معرف الطلب : OD2204#',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: isPortrait ? 18.sp : 7.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'تاريخ النشر 26 كانون الثاني (يناير) 2021 ',
                  style: TextStyle(
                    fontSize: isPortrait ? 12.sp : 5.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: isPortrait ? 13.h : 20.h,
                ),
                Row(
                  children: [
                    Text(
                      'البنود : 15',
                      style: TextStyle(
                        fontSize: isPortrait ? 14.sp : 6.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: isPortrait ? 20.w : 7.w,
                    ),
                    Text(
                      'الإجمالي : 100 ريال',
                      style: TextStyle(
                        fontSize: isPortrait ? 14.sp : 6.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          isPortrait
              ? const Spacer()
              : SizedBox(
                  width: 5.w,
                ),
          Container(
            width: isPortrait ? 100.w : 50.w,
            height: isPortrait ? 100.h : 50.w,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.coffee_outlined,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
