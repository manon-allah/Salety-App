import 'package:flutter/material.dart';

import 'custom_container_first_row_offers.dart';
import 'custom_container_second_row_offers.dart';

class CustomHomeBodyColumnOffers extends StatelessWidget {
  const CustomHomeBodyColumnOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              const Text(
                'تسوق حسب العروض',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Image.asset(
                    'assets/arrow-removebg-preview.png',
                    width: 15,
                    color: Colors.grey.shade600,
                  ),
                  Text(
                    'مشاهدة الكل',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width / 1,
            child: const Column(
              children: [
                Row(
                  children: [
                    CustomContainerFirstRowOffers(
                      colorCont: Color(0xFF736e8c),
                      text: '30',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomContainerFirstRowOffers(
                      colorCont: Color(0xFF299dff),
                      text: '40',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomContainerFirstRowOffers(
                      colorCont: Color(0xFFfe504a),
                      text: '50',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomContainerSecondRowOffers(
                      colorCont: Color(0xFFf49814),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'اشتري 1 واحصل',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'علي 1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'مجانا',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomContainerSecondRowOffers(
                      colorCont: Color(0xFF85963b),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'اقل',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'SAR',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '99',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomContainerSecondRowOffers(
                      colorCont: Color(0xFF17a6ac),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'اختيارات',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'الشهر',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
