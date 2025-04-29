import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeBodyRowSearch extends StatelessWidget {
  const CustomHomeBodyRowSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Row(
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
          width: isPortrait ? 10.w : 5.w,
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
                horizontal: 20.w,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.close,
                    size: 15,
                  ),
                  SizedBox(
                    width: isPortrait ? 18.w : 5.w,
                  ),
                  SizedBox(
                    width: isPortrait
                        ? MediaQuery.sizeOf(context).width * .53
                        : MediaQuery.sizeOf(context).width * .70,
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
    );
  }
}
