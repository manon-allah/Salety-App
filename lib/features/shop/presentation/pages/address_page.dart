import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../profile/presentation/pages/widgets/custom_app_bar_profile.dart';
import 'widgets/custom_address_body.dart';
import 'widgets/custom_bottom_nav_bar_address.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBarProfile(
          text: 'عنوان التسليم',
          fontSize: isPortrait ? 20.sp : 10.sp,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        flexibleSpace: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Colors.grey[300],
          ),
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          const CustomAddressBody(),
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              color: Colors.grey.shade300,
              padding: EdgeInsets.only(
                right: 25.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'يشحن الي',
                    style: TextStyle(
                      fontSize: isPortrait ? 18.sp : 10.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBarAddress(),
    );
  }
}
