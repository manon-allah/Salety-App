import 'package:flutter/material.dart';

class CustomContainerSecondRowOffers extends StatelessWidget {
  final Color colorCont;
  final Widget child;
  const CustomContainerSecondRowOffers({
    super.key,
    required this.colorCont,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: colorCont,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}
