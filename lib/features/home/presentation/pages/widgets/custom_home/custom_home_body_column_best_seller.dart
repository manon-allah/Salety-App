import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salety_update/features/home/domain/entities/product_entity.dart';
import 'package:salety_update/features/home/presentation/pages/widgets/custom_best_seller_all.dart';
import 'custom_grid_view_home.dart';

class CustomHomeBodyColumnBestSeller extends StatelessWidget {
  final List<ProductEntity> productList;
  const CustomHomeBodyColumnBestSeller({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              const Text(
                'الأكثر مبيعا',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Row(
                children: [
                  Image.asset(
                    'assets/arrow-removebg-preview.png',
                    width: 15,
                    color: Colors.grey.shade600,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) =>
                                  CustomBestSellerAll(productList: productList),
                        ),
                      );
                    },
                    child: Text(
                      'مشاهدة الكل',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        CustomGridViewHome(productList: productList),
      ],
    );
  }
}
