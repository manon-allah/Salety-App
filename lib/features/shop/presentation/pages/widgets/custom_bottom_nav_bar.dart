import 'package:flutter/material.dart';
import 'custom_bottom_nav.dart';
import 'custom_side_bar_nav.dart';

class CustomBottomNavNar extends StatelessWidget {
  const CustomBottomNavNar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return isPortrait
        ? CustomBottomNav(
            context: context,
          )
        : CustomSideNavBar(
            context: context,
          );
  }
}
