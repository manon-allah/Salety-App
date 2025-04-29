import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../order_path_page.dart';

class CustomOrderSuccessBody extends StatelessWidget {
  const CustomOrderSuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Padding(
      padding: EdgeInsets.only(
        left: 25.w,
        right: 25.w,
        top: isPortrait ? 30.h : 10.h,
      ),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: isPortrait ? MediaQuery.sizeOf(context).width : 400.h,
              height: isPortrait
                  ? MediaQuery.sizeOf(context).height / 2 + 250
                  : 305.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFF1bad7c),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: isPortrait ? 30.h : 10.h,
                  ),
                  Image.asset(
                    'assets/success_bag_icon.png',
                    width: isPortrait ? 250.w : 40.w,
                  ),
                  SizedBox(
                    height: isPortrait ? 30.h : 5.h,
                  ),
                  Text(
                    'طلبك ناجح!',
                    style: TextStyle(
                      fontSize: isPortrait ? 30.sp : 10.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: isPortrait ? 40.h : 15.h,
                  ),
                  isPortrait
                      ? Text(
                          textAlign: TextAlign.center,
                          'شكرا علي الطلب .. ستحصل عليه في غضون بضع دقائق ستحصل عليه في غضون بضع دقائق',
                          style: TextStyle(
                            fontSize: isPortrait ? 16.sp : 7.sp,
                            color: Colors.grey.shade100,
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            'شكرا علي الطلب .. ستحصل عليه في غضون بضع دقائق ستحصل عليه في غضون بضع دقائق',
                            style: TextStyle(
                              fontSize: isPortrait ? 16.sp : 7.sp,
                              color: Colors.grey.shade100,
                            ),
                          ),
                        ),
                  isPortrait
                      ? const Spacer()
                      : SizedBox(
                          height: 30.h,
                        ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OrderPathPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: isPortrait ? 45.h : 60.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF3c384f),
                        ),
                        child: Center(
                          child: Text(
                            'ترتيب المسار',
                            style: TextStyle(
                              fontSize: isPortrait ? 20.sp : 10.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
