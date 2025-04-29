import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salety_update/features/home/domain/entities/product_entity.dart';
import 'see_all/custom_card_best_seller_home.dart';

class CustomGridViewsBodyBestSeller extends StatelessWidget {
  final List<ProductEntity> productList;
  const CustomGridViewsBodyBestSeller({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid.builder(
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15.h,
          crossAxisSpacing: 15.h,
          childAspectRatio: 2.9 / 5,
        ),
        itemBuilder: (context, index) {
          return CustomCardBestSellerHome(productEntity: productList[index]);
        },
      ),
    );
  }
}
