import 'package:flutter/material.dart';
import '../widgets/custom_first_page_body.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomFirstPageBody(),
    );
  }
}
