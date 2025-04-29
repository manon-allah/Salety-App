import 'package:flutter/material.dart';

import 'custom_column_subscribe_text_have.dart';
import 'custom_text_field_first_text.dart';

class CustomSignUpBody extends StatelessWidget {
  const CustomSignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
            children: [
              CustomTextFieldFirstText(),
              CustomColumnSubscribeTextHave(),
            ],
          ),
    );
  }
}
