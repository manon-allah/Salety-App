import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../shop/presentation/pages/shop_page.dart';
import '../../../../domain/entities/product_entity.dart';
import '../custom_home/custom_container_bottom.dart';

class CustomCardBestSellerHome extends StatelessWidget {
  final ProductEntity productEntity;
  const CustomCardBestSellerHome({super.key, required this.productEntity});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ShopPage()),
        );
      },
      child: Container(
        width: 170,
        height: 240,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    width: 55,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      // color: Color(0xFF1bad7c),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'جديد',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.green,
                      // color: Color(0xFF1bad7c),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: CachedNetworkImage(
                imageUrl:
                    'https://master-market.masool.net/uploads/${productEntity.img}',
                height: 80.h,
                width: double.infinity,
                fit: BoxFit.fitHeight,
                placeholder:
                    (context, url) => Center(
                      child: SizedBox(
                        width: 50.w,
                        height: 50.h,
                        child: const CircularProgressIndicator(),
                      ),
                    ),
                errorWidget:
                    (context, url, error) => Icon(
                      Icons.error_rounded,
                      size: 70,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                // imageBuilder:
                //     (context, imageProvider) => Container(
                //       // height: 100,
                //       // width: 100,
                //       decoration: BoxDecoration(
                //         // shape: BoxShape.circle,
                //         image: DecorationImage(
                //           image: imageProvider,
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //     ),
              ),

              // Image.asset('assets/fruits.png', height: 90.h),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // width: 100,
                    // height: 25,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      productEntity.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    productEntity.details,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  Row(
                    children: [
                      Text(
                        'الخصم : ',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '% ${productEntity.discount}',
                        maxLines: 2,
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomContainerBottom(price: productEntity.price.toString(),),
          ],
        ),
      ),
    );
  }
}
