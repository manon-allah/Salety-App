import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'custom_step_item.dart';

class CustomOrderTracking extends StatefulWidget {
  const CustomOrderTracking({super.key});

  @override
  State<CustomOrderTracking> createState() => _CustomOrderTrackingState();
}

class _CustomOrderTrackingState extends State<CustomOrderTracking> {
  int activeStep = -1;
  List<String> subtitles = [
    "قيد الانتظار",
    "قيد الانتظار",
    "قيد الانتظار",
    "قيد الانتظار",
    "قيد الانتظار"
  ];

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return SizedBox(
      width: isPortrait ? MediaQuery.sizeOf(context).width : 140.w,
      height: isPortrait ? 370.h : 300.h,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        padding: EdgeInsets.only(
          left: 10.w,
          right: 10.w,
          top: isPortrait ? 25.h : 15.h,
          bottom: isPortrait ? 25.h : 15.h,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (activeStep == index) {
                          activeStep = -1;
                          subtitles[index] = "قيد الانتظار";
                        } else {
                          activeStep = index;
                          subtitles[index] = DateFormat('d MMMM y', 'ar')
                              .format(DateTime.now());
                        }
                      });
                    },
                    child: CustomStepItem(
                      title: _getTitle(index),
                      subtitle: subtitles[index],
                      isActive: index <= activeStep,
                      isFirst: index == 0,
                      isLast: index == 4,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return "تم الطلب";
      case 1:
        return "Order";
      case 2:
        return "تم شحن الطلب";
      case 3:
        return "خارج الخدمة";
      case 4:
        return "أجل تسليم";
      default:
        return "";
    }
  }
}
