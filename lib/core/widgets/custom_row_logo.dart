import 'package:flutter/material.dart';

class CustomRowLogo extends StatelessWidget {
  const CustomRowLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 70,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'ســـــلتي',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red.shade700,
                ),
              ),
              const Text(
                's e l a t y',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/logo.png',
            width: 120,
            height: 120,
          ),
        ],
      ),
    );
  }
}
