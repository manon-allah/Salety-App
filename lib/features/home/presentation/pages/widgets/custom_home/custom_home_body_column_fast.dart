import 'package:flutter/material.dart';
import 'custom_grid_view_home.dart';

class CustomHomeBodyColumnFast extends StatelessWidget {
  const CustomHomeBodyColumnFast({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                'طازج وسريع',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        // CustomGridViewHome(),
      ],
    );
  }
}
