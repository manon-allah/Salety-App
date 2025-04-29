import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerRow extends StatelessWidget {
  final Widget icon;
  final String text;
  final Color colorCont;
  final double width;
  const CustomContainerRow({
    super.key,
    required this.icon,
    required this.text,
    required this.colorCont,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 140.h,
      decoration: BoxDecoration(
        color: colorCont,
        borderRadius: BorderRadius.circular(26),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromRGBO(255, 255, 255, 0.4),
              ),
              child: icon,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
