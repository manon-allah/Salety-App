import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStepItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isActive;
  final bool isFirst;
  final bool isLast;

  const CustomStepItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.isActive = false,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: isPortrait ? 16.sp : 6.sp,
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.green : Colors.black,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: isPortrait ? 14.sp : 5.sp,
                color: isActive ? Colors.green : Colors.grey,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            CircleAvatar(
              radius: isPortrait ? 20.r : 15.r,
              backgroundColor: isActive ? Colors.green : Colors.grey,
              child: Icon(
                isFirst
                    ? Icons.list_alt_rounded
                    : isLast
                        ? Icons.check_circle
                        : isActive
                            ? Icons.list
                            : Icons.list,
                color: Colors.white,
                size: isPortrait ? 30 : 20,
              ),
            ),
            if (!isLast)
              Container(
                width: isPortrait ? 2.w : 1.w,
                height: isPortrait ? 35.h : 25.h,
                color: isActive ? Colors.green : Colors.grey,
              ),
          ],
        ),
      ],
    );
  }
}
