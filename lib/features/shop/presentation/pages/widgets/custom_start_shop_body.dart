import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../address_page.dart';

class CustomStartShopBody extends StatelessWidget {
  const CustomStartShopBody({super.key});

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
              width: isPortrait ? MediaQuery.sizeOf(context).width : 130.w,
              height: isPortrait
                  ? MediaQuery.sizeOf(context).height / 2 + 250
                  : 290.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isPortrait
                      ? const Spacer()
                      : SizedBox(
                          height: 20.h,
                        ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.red,
                    size: isPortrait ? 150 : 50,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'عربة التسوق فارغة!',
                    style: TextStyle(
                      fontSize: isPortrait ? 30.sp : 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' \nاجعل سلتك سعيدة وأضف منتجات',
                    style: TextStyle(
                      fontSize: isPortrait ? 16.sp : 6.3.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
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
                            builder: (context) => const AddressPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: isPortrait
                            ? MediaQuery.sizeOf(context).width
                            : 100.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF1bad7c),
                        ),
                        child: Center(
                          child: Text(
                            'ابدأ التسوق',
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
                    height: isPortrait ? 30.h : 10.h,
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
