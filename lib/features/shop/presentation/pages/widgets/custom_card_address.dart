import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardAddress extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onSelect;
  const CustomCardAddress({
    super.key,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: isPortrait ? MediaQuery.sizeOf(context).width : 150.w,
            height: isPortrait ? 120.h : 150.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(
              top: isPortrait ? 13.h : 18.h,
              bottom: 10.h,
            ),
            // margin: EdgeInsets.only(left: 12.h),
            child: InkWell(
              onTap: onSelect,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isSelected) ...[SizedBox(height: 10.h)],
                  Row(
                    children: [
                      Radio<bool>(
                        value: true,
                        groupValue: isSelected,
                        onChanged: (_) => onSelect(),
                        activeColor: Colors.red,
                      ),
                      Text(
                        'المنزل',
                        style: TextStyle(
                          fontSize: isPortrait ? 16.sp : 8.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz_rounded,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'البنك الاهلي - الباجور - المنوفية',
                          style: TextStyle(
                            fontSize: isPortrait ? 14.sp : 7.sp,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: isPortrait ? 4.h : 2.h),
                        Text(
                          'جوال: 01093749162',
                          style: TextStyle(fontSize: isPortrait ? 16.sp : 8.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isSelected) ...[
            Positioned(
              right: 10.w,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(76, 175, 80, 0.99),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Text(
                  'افتراضي',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isPortrait ? 13.sp : 7.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
