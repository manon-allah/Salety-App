import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerBottom extends StatelessWidget {
  final String price;
  const CustomContainerBottom({super.key, required this.price,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: Colors.grey.shade400,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            const Text('EGP'),
            const SizedBox(width: 5),
            Text(price),
            const Spacer(),
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFfe504b),
              ),
              child: const Center(
                child: Stack(
                  children: [
                    Icon(Icons.calendar_today, color: Colors.white, size: 21),
                    Positioned(
                      top: 5,
                      right: 3,
                      child: Icon(Icons.add, color: Colors.white, size: 15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
