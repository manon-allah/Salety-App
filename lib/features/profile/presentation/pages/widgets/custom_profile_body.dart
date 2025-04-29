import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../domain/entities/user_entity.dart';
import '../../manager/cubit/profile_cubit.dart';
import 'custom_column_containers.dart';
import 'custom_photo_container.dart';
import 'custom_row_container.dart';


class CustomProfileBody extends StatelessWidget {
  const CustomProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerHeight = screenWidth > 400 ? 120.0 : 100.0;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      child: SizedBox(
        width: screenWidth,
        child: Column(
          children: [
            isPortrait
                ? Column(
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      BlocBuilder<ProfileCubit, ProfileState>(
                        builder: (context, state) {
                          if (state is GetdataprofileLoading) {
                            final userFake = UserEntitiy(
                              status: true,
                              message: '',
                              data: Data(
                                name: 'name',
                                email: 'email',
                                mobile: 'phone',
                                profilePhotoPath: '',
                                roleId: 1,
                                profilePhotoUrl: '',
                                id: 1,
                              ),
                            );
                            return Skeletonizer(
                              child: CustomPhotoContainer(
                                containerHeight: containerHeight,
                                user: userFake,
                              ),
                            );
                          } else if (state is GetdataprofileSuccess) {
                            final user = state.user;
                            log('user data =========================== ${user.data.name}');
                            return CustomPhotoContainer(
                              user: user,
                              containerHeight: containerHeight,
                            );
                          } else if (state is GetdataprofileError) {
                            return Center(
                              child: Text(
                                'Error: ${state.errorMessage}',
                                style: const TextStyle(color: Colors.red),
                              ),
                            );
                          } else {
                            return const SizedBox.shrink();
                          }
                        },
                      ),
                      SizedBox(
                        height: isPortrait ? 15.h : 0.h,
                      ),
                      const CustomColumnContainers(),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocBuilder<ProfileCubit, ProfileState>(
                        builder: (context, state) {
                          if (state is GetdataprofileLoading) {
                            final userFake = UserEntitiy(
                              status: true,
                              message: '',
                              data: Data(
                                name: 'name',
                                email: 'email',
                                mobile: 'phone',
                                profilePhotoPath: '',
                                roleId: 1,
                                profilePhotoUrl: '',
                                id: 1,
                              ),
                            );
                            return Skeletonizer(
                              child: CustomPhotoContainer(
                                containerHeight: containerHeight,
                                user: userFake,
                              ),
                            );
                          } else if (state is GetdataprofileSuccess) {
                            final user = state.user;
                            log('user data =========================== ${user.data.name}');
                            return Padding(
                              padding: EdgeInsets.only(
                                top: 50.h,
                              ),
                              child: CustomPhotoContainer(
                                user: user,
                                containerHeight: containerHeight,
                              ),
                            );
                          } else if (state is GetdataprofileError) {
                            return Center(
                              child: Text(
                                'Error: ${state.errorMessage}',
                                style: const TextStyle(color: Colors.red),
                              ),
                            );
                          } else {
                            return const SizedBox.shrink();
                          }
                        },
                      ),
                      SizedBox(
                        width: 20.h,
                      ),
                      const CustomColumnContainers(),
                    ],
                  ),
            const CustomRowContainer(),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
