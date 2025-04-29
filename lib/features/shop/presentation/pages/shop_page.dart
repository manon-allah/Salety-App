import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../profile/presentation/pages/widgets/custom_app_bar_profile.dart';
import 'widgets/custom_bottom_nav_bar.dart';
import 'widgets/custom_shop_body.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBarProfile(
          text: 'عربة التسوق',
          fontSize: isPortrait ? 20.sp : 13.sp,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        flexibleSpace: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(color: Colors.grey[300]),
        ),
      ),
      body: Row(
        children: [
          const Expanded(child: CustomShopBody()),
          if (!isPortrait) const CustomBottomNavNar(),
        ],
      ),
      bottomNavigationBar: isPortrait ? const CustomBottomNavNar() : null,
    );
  }
}
