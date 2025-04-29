import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_home_body_column_best_seller_bloc_consumer.dart';
import '../custom_home_body_column_better_bloc_builder.dart';
import '../custom_home_body_column_class_bloc_builder.dart';
import 'custom_home_body_column_chance.dart';
import 'custom_home_body_column_fast.dart';
import 'custom_home_body_column_offers.dart';
import 'custom_home_body_search.dart';

class CustomHomeBodyBody extends StatefulWidget {
  const CustomHomeBodyBody({super.key});

  @override
  State<CustomHomeBodyBody> createState() => _CustomHomeBodyBodyState();
}

class _CustomHomeBodyBodyState extends State<CustomHomeBodyBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
            child: const CustomHomeBodyRowSearch(),
          ),
          const SizedBox(height: 20),
          CustomHomeBodyColumnBetterBlocBuilder(),
          const SizedBox(height: 10),
          CustomHomeBodyColumnClassBlocBuilder(),
          const SizedBox(height: 10),
          Column(
            children: [
              CustomHomeBodyColumnBestSellerBlocConsumer(),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/fruits_img.jpg',
                    height: 150.h,
                    width: MediaQuery.sizeOf(context).width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              const CustomHomeBodyColumnOffers(),
              SizedBox(height: 10.h),
              const CustomHomeBodyColumnFast(),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/fruits_img.jpg',
                    height: 150.h,
                    width: MediaQuery.sizeOf(context).width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const CustomHomeBodyColumnChance(),
            ],
          ),
        ],
      ),
    );
  }
}
