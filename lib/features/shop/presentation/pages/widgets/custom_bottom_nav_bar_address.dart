import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../order_success.dart';

class CustomBottomNavBarAddress extends StatelessWidget {
  const CustomBottomNavBarAddress({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: isPortrait ? 60.h : 70.h,
      color: Colors.grey.shade300,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 7.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderSuccess(),
                  ),
                );
              },
              child: Container(
                width: isPortrait ? MediaQuery.sizeOf(context).width : 130.w,
                height: isPortrait ? 45.h : 50.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF1bad7c),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'التسليم لهذا العنوان',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isPortrait ? 18.sp : 10.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
          ],
        ),
      ),
    );
  }
}
