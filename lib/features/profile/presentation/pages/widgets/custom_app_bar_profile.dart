import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarProfile extends StatelessWidget {
  final String? text;
  final void Function()? onTap;
  final Color? colorText;
  final double? fontSize;
  const CustomAppBarProfile({
    super.key,
    this.text,
    this.colorText,
    this.fontSize,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double iconSize = screenWidth > 400 ? 20.0 : 16.0;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(
                Icons.camera_alt_outlined,
                size: iconSize,
              ),
            ),
          ),
          const Spacer(),
          Text(
            text ?? '',
            style: TextStyle(
              color: colorText ?? Colors.black,
              fontSize: fontSize ?? (screenWidth > 400 ? 25 : 20),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: onTap,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: iconSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
