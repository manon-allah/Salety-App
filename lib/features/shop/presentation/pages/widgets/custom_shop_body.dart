import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_card_fruit.dart';

class CustomShopBody extends StatefulWidget {
  const CustomShopBody({super.key});

  @override
  State<CustomShopBody> createState() => _CustomShopBodyState();
}

class _CustomShopBodyState extends State<CustomShopBody> {
  List<int> counters = List.generate(20, (index) => 0);
  List<String> items = List.generate(20, (index) => 'Item $index');
  List<double> dragOffsets = List.generate(20, (index) => 0.0);

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Padding(
      padding: EdgeInsets.only(
        left: isPortrait ? 20.w : 0.w,
        right: isPortrait ? 20.w : 5.w,
        top: 10.h,
        bottom: 10.h,
      ),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: 10.h,
            ),
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                setState(() {
                  dragOffsets[index] =
                      (dragOffsets[index] - details.primaryDelta!)
                          .clamp(0.0, 100.0);
                });
              },
              onHorizontalDragEnd: (_) {
                if (dragOffsets[index] > 50) {
                  setState(() {
                    dragOffsets[index] = 100.0;
                  });
                } else {
                  setState(() {
                    dragOffsets[index] = 0.0;
                  });
                }
              },
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 40.h,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.white,
                            size: 35,
                          ),
                          onPressed: () {
                            setState(() {
                              items.removeAt(index);
                              counters.removeAt(index);
                              dragOffsets.removeAt(index);
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(
                      milliseconds: 300,
                    ),
                    transform:
                        Matrix4.translationValues(-dragOffsets[index], 0, 0),
                    curve: Curves.easeOut,
                    child: CustomCardFruit(
                      counter: counters[index],
                      incrementCounter: () => incrementCounter(index),
                      decrementCounter: () => decrementCounter(index),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void incrementCounter(int index) {
    setState(() {
      counters[index]++;
    });
  }

  void decrementCounter(int index) {
    setState(() {
      if (counters[index] > 0) counters[index]--;
    });
  }
}
