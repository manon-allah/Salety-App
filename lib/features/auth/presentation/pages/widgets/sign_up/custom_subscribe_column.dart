import 'package:flutter/material.dart';

import 'custom_container_social.dart';

class CustomSubscribeColumn extends StatelessWidget {
  const CustomSubscribeColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'أو اشترك مع',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CustomContainerSocial(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Facebook',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/facebook.png',
                    width: 25,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomContainerSocial(
              color: Colors.red.shade700,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'google',
                    style: TextStyle(
                      color: Colors.red.shade700,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/googl.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
