import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowSearchFruit extends StatelessWidget {
  const CustomRowSearchFruit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Padding(
      padding: EdgeInsets.only(
        left: 13.w,
        right: 13.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/control-icon.png',
              width: isPortrait ? 45.w : 20.w,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: isPortrait ? 9.w : 5.w,
          ),
          Expanded(
            child: Container(
              height: isPortrait ? 40.h : 50.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.close,
                      size: 15,
                    ),
                    SizedBox(
                      width: isPortrait ? 10.w : 7.w,
                    ),
                    SizedBox(
                      width: isPortrait
                          ? MediaQuery.sizeOf(context).width * .43
                          : MediaQuery.sizeOf(context).width * .59,
                      height: 38.h,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'البحث عن المنتجات...',
                          labelStyle: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search_rounded,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
