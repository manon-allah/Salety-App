import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/services/caching.dart';
import '../../../manager/navigate/navigate_cubit.dart';


class CustomHomeBodyHeader extends StatelessWidget {
  const CustomHomeBodyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = CacheHelper.getData(key: 'name');
    final String address = CacheHelper.getData(key: 'address');
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                context.read<NavigateCubit>().currentIndex = 0;
                context.read<NavigateCubit>().navigateTo(0);
              },
              child: CircleAvatar(
                radius: 25.r,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 23.r,
                  backgroundImage: const AssetImage('assets/logo.png'),
                ),
              ),
            ),
            SizedBox(
              width: isPortrait ? 10.w : 5.w,
            ),
            Column(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: isPortrait ? 23.sp : 10.sp,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      address,
                      style: TextStyle(
                        fontSize: isPortrait ? 13.sp : 7.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 30.w,
              height: isPortrait ? 30.h : 40.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: isPortrait ? 20 : 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
