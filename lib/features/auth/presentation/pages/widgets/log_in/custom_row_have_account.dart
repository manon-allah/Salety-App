import 'package:flutter/material.dart';

class CustomRowHaveAccount extends StatelessWidget {
  const CustomRowHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'تسجيل الدخول',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          Text(
            'لديك حساب بالفعل؟',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
