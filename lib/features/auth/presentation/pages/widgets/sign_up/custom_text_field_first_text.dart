import 'package:flutter/material.dart';

import 'custom_colimn_text_form_field.dart';
import 'custom_text_column.dart';


class CustomTextFieldFirstText extends StatelessWidget {
  const CustomTextFieldFirstText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 35,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomTextColumn(),
          SizedBox(
            height: 30,
          ),
          CustomColumnTextFormField(),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
