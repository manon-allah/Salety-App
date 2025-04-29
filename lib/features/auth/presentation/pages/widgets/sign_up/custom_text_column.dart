
import 'package:flutter/material.dart';

class CustomTextColumn extends StatelessWidget {
  const CustomTextColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'انشاء حساب جديد',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'أدخل بياناتك لانشاء حساب',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
