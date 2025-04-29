import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardFruit extends StatefulWidget {
  final int counter;
  final void Function() incrementCounter;
  final void Function() decrementCounter;
  const CustomCardFruit({
    super.key,
    required this.counter,
    required this.incrementCounter,
    required this.decrementCounter,
  });

  @override
  State<CustomCardFruit> createState() => _CustomCardFruitState();
}

class _CustomCardFruitState extends State<CustomCardFruit> {
  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: isPortrait ? 100.h : 120.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  TextButton(
                    onPressed: widget.incrementCounter,
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: isPortrait ? 20.sp : 10.sp,
                      ),
                    ),
                  ),
                  Text(
                    widget.counter.toString(),
                    style: TextStyle(
                      fontSize: isPortrait ? 25.sp : 7.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: widget.decrementCounter,
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: isPortrait ? 20.sp : 10.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: isPortrait ? 80.w : 40.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: isPortrait ? 25.w : 15.w,
                        child: Row(
                          children: [
                            Text(
                              widget.counter.toString(),
                              style: TextStyle(
                                fontSize: isPortrait ? 15.sp : 10.sp,
                                color: const Color(0xFF1bad7c),
                              ),
                            ),
                            Text(
                              'x',
                              style: TextStyle(
                                fontSize: isPortrait ? 20.sp : 10.sp,
                                color: const Color(0xFF1bad7c),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '35.00\$',
                        style: TextStyle(
                          fontSize: isPortrait ? 20.sp : 10.sp,
                          color: const Color(0xFF1bad7c),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'كمثري أمريكي',
                    style: TextStyle(
                      fontSize: isPortrait ? 19.sp : 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '1kg',
                    style: TextStyle(
                      fontSize: isPortrait ? 19.sp : 10.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
