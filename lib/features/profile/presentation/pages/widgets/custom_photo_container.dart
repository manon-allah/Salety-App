import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/entities/user_entity.dart';

class CustomPhotoContainer extends StatelessWidget {
  final UserEntitiy user;
  final double containerHeight;

  const CustomPhotoContainer({
    super.key,
    required this.containerHeight,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: isPortrait ? Alignment.center : Alignment.centerRight,
          child: Container(
            width: isPortrait ? 330.w : 110.w,
            height: isPortrait ? 110.h : 130.h,
            decoration: BoxDecoration(
              color: const Color(0xFF1bad7c),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  user.data.name,
                  style: TextStyle(
                    fontSize: isPortrait ? 25.sp : 10.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  user.data.email,
                  style: TextStyle(
                    fontSize: isPortrait ? 15.sp : 8.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  user.data.mobile,
                  style: TextStyle(
                    fontSize: isPortrait ? 15.sp : 8.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: isPortrait ? 130.w : 100.w,
          height: isPortrait ? 100.h : 70.h,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: isPortrait ? (containerHeight / 1.5) : 30.h,
                right: isPortrait ? (screenWidth - 130) / 2.3 : 37.w,
                child: CircleAvatar(
                  radius: isPortrait ? 53.r : 43.r,
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 0.3),
                  child: CircleAvatar(
                    radius: isPortrait ? 46.r : 38.r,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: isPortrait ? 45.r : 37.r,
                      backgroundImage: NetworkImage(user
                              .data.profilePhotoUrl.isEmpty
                          ? 'https://t3.ftcdn.net/jpg/09/64/89/20/360_F_964892089_vioRltmAxaoQEBLtYtChVBxIzDWwhA3T.jpg'
                          : '${user.data.profilePhotoUrl}&size=100'),
                      // const AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: isPortrait ? 105.w : 5.w,
                top: 5.h,
                child: Container(
                  width: isPortrait ? 30.w : 77.w,
                  height: 30.h,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                      ),
                    ],
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                    size: isPortrait ? 22 : 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
