import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../shop/presentation/pages/shop_page.dart';
import '../../../../domain/entities/category_sub_entity.dart';

class CustomCardBestSeller extends StatelessWidget {
  final CategorySubEntity subEntity;
  final CategorySubEntity categoryEntity;
  const CustomCardBestSeller({
    super.key,
    required this.subEntity,
    required this.categoryEntity,
  });

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
        // width: 170,
        // height: 240,
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
                      color: Color(0xFF1bad7c),
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
                    child: Icon(Icons.favorite, color: Color(0xFF1bad7c)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://master-market.masool.net/uploads/${subEntity.img}',
                  fit: BoxFit.fitHeight,
                  height: 110.h,
                  width: double.infinity,
                  errorBuilder: (
                    BuildContext context,
                    Object exception,
                    StackTrace? stackTrace,
                  ) {
                    return Image.network(
                      'https://cdn-icons-png.flaticon.com/512/6478/6478111.png',
                      fit: BoxFit.fill,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 25,
                    padding: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      categoryEntity.name,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    subEntity.name,
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  Text(
                    subEntity.details,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ],
              ),
            ),
            // const Spacer(),
            // const CustomContainerBottom(),
          ],
        ),
      ),
    );
  }
}
