import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../profile/presentation/pages/widgets/custom_app_bar_profile.dart';
import '../../../../domain/entities/category_sub_entity.dart';

class CustomAppBarFruit extends StatelessWidget {
  final CategorySubEntity catEntity;
  const CustomAppBarFruit({super.key, required this.catEntity});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: isPortrait ? 120.h : 130.h,
          color: const Color(0xFF1bad7c),
        ),
        SizedBox(
          width: 130.w,
          height: 90.h,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: isPortrait ? -63.h : -90.h,
                right:
                    isPortrait
                        ? MediaQuery.of(context).size.width / 3 + 20
                        : 158.w,
                child: CircleAvatar(
                  radius: isPortrait ? 43.r : 53.r,
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 0.9),
                  child: CircleAvatar(
                    radius: isPortrait ? 36.r : 46.r,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: isPortrait ? 35.r : 40.r,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        'https://master-market.masool.net/uploads/${catEntity.img}',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 35.h, right: 10.w, left: 10.w),
          child: CustomAppBarProfile(
            text: catEntity.name,
            colorText: Colors.white,
            fontSize: isPortrait ? 25.sp : 12.sp,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}
