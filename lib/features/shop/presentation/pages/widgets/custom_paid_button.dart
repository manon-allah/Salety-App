import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../start_shop_page.dart';

class CustomPaidButton extends StatelessWidget {
  const CustomPaidButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StartShopPage(),
          ),
        );
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: isPortrait ? 45.h : 60.h,
        decoration: BoxDecoration(
          color: const Color(0xFF1bad7c),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'الدفع',
            style: TextStyle(
              color: Colors.white,
              fontSize: isPortrait ? 25.sp : 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
