import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_container.dart';

class CustomColumnContainers extends StatelessWidget {
  const CustomColumnContainers({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Align(
      alignment: isPortrait ? Alignment.center : Alignment.centerLeft,
      child: SizedBox(
        width: isPortrait ? MediaQuery.sizeOf(context).width : 175.w,
        height: 275.h,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomContainer(
                  icon: Icon(
                    Icons.person_2_rounded,
                    color: Colors.red,
                  ),
                  text: 'مدفوعاتي',
                ),
                SizedBox(
                  width: 10.w,
                ),
                const CustomContainer(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.red,
                  ),
                  text: 'طلباتي',
                ),
                SizedBox(
                  width: 10.w,
                ),
                const CustomContainer(
                  text: 'منة',
                  icon: Icon(
                    Icons.person_2_rounded,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomContainer(
                  icon: Icon(
                    Icons.person_2_rounded,
                    color: Colors.red,
                  ),
                  text: 'رمز ترويجي',
                ),
                SizedBox(
                  width: 10.w,
                ),
                const CustomContainer(
                  icon: Icon(
                    Icons.person_2_rounded,
                    color: Colors.red,
                  ),
                  text: 'المعاملات',
                ),
                SizedBox(
                  width: 10.w,
                ),
                const CustomContainer(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  text: 'المفضل لدي',
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomContainer(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.red,
                  ),
                  text: 'إعدادات',
                ),
                SizedBox(
                  width: 10.w,
                ),
                const CustomContainer(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.red,
                  ),
                  text: 'تنبيه',
                ),
                SizedBox(
                  width: 10.w,
                ),
                const CustomContainer(
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  text: 'عنواني',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
