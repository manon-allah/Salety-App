import 'package:flutter/material.dart';
import 'widgets/custom_home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: const Center(
        child: CustomHomeBody(),
      ),
    );
  }
}
