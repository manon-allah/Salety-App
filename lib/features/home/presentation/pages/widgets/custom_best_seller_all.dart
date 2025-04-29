import 'package:flutter/material.dart';
import '../../../../profile/presentation/pages/widgets/custom_app_bar_profile.dart';
import '../../../domain/entities/product_entity.dart';
import 'custom_best_seller_all_body.dart';

class CustomBestSellerAll extends StatelessWidget {
  final List<ProductEntity> productList;
  const CustomBestSellerAll({super.key, required this.productList,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBarProfile(
          text: 'الأكثر مبيعا',
          onTap: () {
            Navigator.pop(context);
          },
        ),
        flexibleSpace: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(color: Colors.grey[300]),
        ),
      ),
      body: CustomBestSellerAllBody(
        productList: productList,
      ),
    );
  }
}
