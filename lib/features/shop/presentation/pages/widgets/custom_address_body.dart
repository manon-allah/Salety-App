import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_card_address.dart';

class CustomAddressBody extends StatefulWidget {
  const CustomAddressBody({super.key});

  @override
  State<CustomAddressBody> createState() => _CustomAddressBodyState();
}

class _CustomAddressBodyState extends State<CustomAddressBody> {
  int? selectedAddressIndex;
  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return 
    CustomScrollView(
      scrollDirection: isPortrait ? Axis.vertical : Axis.horizontal,
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: isPortrait ? 30.h : 100.h)),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCardAddress(
                    isSelected: selectedAddressIndex == index,
                    onSelect: () => selectAddress(index),
                  ),
                ],
              ),
              childCount: 10,
            ),
          ),
        ),
      ],
    );
  }

  void selectAddress(int index) {
    setState(() {
      if (selectedAddressIndex == index) {
        selectedAddressIndex = null;
      } else {
        selectedAddressIndex = index;
      }
    });
  }
}
