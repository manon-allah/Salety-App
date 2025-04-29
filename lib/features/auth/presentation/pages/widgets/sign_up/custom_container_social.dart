import 'package:flutter/material.dart';

class CustomContainerSocial extends StatelessWidget {
  final Widget child;
  final Color color;
  const CustomContainerSocial({
    super.key,
    required this.child, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 50,
      padding: const EdgeInsets.only(
        left: 7,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
