import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? colorText;
  final void Function()? onTap;
  final Color? colorCont;
  final String text;
  const CustomButton({
    super.key,
    required this.colorCont,
    required this.text,
    this.onTap,
    this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorCont,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: colorText ?? Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
