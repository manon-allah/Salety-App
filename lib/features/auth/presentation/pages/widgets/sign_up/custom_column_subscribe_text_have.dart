import 'package:flutter/material.dart';
import '../log_in/custom_row_have_account.dart';
import 'custom_subscribe_column.dart';


class CustomColumnSubscribeTextHave extends StatelessWidget {
  const CustomColumnSubscribeTextHave({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 35,
      ),
      child: Column(
        children: [
          CustomSubscribeColumn(),
          SizedBox(
            height: 40,
          ),
          CustomRowHaveAccount(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
