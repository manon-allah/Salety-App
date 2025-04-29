import 'package:flutter/material.dart';
import '../../../../domain/entities/product_entity.dart';
import '../see_all/custom_card_best_seller_home.dart';

class CustomGridViewHome extends StatelessWidget {
  final List<ProductEntity> productList;
  const CustomGridViewHome({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 620,
      child: GridView.builder(
        itemCount: productList.length,
        padding: const EdgeInsets.only(left: 10, right: 10),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2.3 / 1.3,
        ),
        itemBuilder: (context, index) {
          return CustomCardBestSellerHome(productEntity: productList[index]);
        },
      ),
    );
  }
}
