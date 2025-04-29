import 'package:flutter/material.dart';

class CustomHomeBodyColumnChance extends StatelessWidget {
  const CustomHomeBodyColumnChance({super.key});

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
                'انتهز الفرصة',
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
        SizedBox(
          height: 210,
          child: ListView.builder(
            itemCount: 10,
            padding: const EdgeInsets.only(
              left: 10,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 170,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('طبق فواكه'),
                                    Text(
                                      'خصم 25% بدون فوائد',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Image.asset(
                                  'assets/fruits.png',
                                  width: 140,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: 170,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 16,
                            right: 10,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFfe504b),
                              ),
                              child: const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
