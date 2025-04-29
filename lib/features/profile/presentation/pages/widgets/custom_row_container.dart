import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/di/di.dart';
import '../../../../auth/presentation/manager/cubit/auth_cubit.dart';
import 'custom_container_row.dart';

class CustomRowContainer extends StatelessWidget {
  const CustomRowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return SizedBox(
      width: isPortrait ? MediaQuery.sizeOf(context).width : 170.w,
      height: isPortrait ? 110.h : 100.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              di<AuthCubit>().signOut();
              Navigator.pushNamedAndRemoveUntil(context, 'first_page' , (route) => false);
            },
            child: CustomContainerRow(
              width:
                  isPortrait ? MediaQuery.sizeOf(context).width * 0.44 : 80.w,
              colorCont: const Color(0xFF1bad7c),
              icon: Icon(
                Icons.logout,
                color: Colors.white,
                size: isPortrait ? 30 : 25,
              ),
              text: 'خروج',
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: CustomContainerRow(
              width:
                  isPortrait ? MediaQuery.sizeOf(context).width * 0.44 : 80.w,
              colorCont: const Color(0xFFde4450),
              icon: Icon(
                Icons.help_center_outlined,
                color: Colors.white,
                size: isPortrait ? 30 : 25,
              ),
              text: 'مركز الدعم',
            ),
          ),
        ],
      ),
    );
  }
}
