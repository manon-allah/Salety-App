import 'package:flutter/material.dart';
import '../../../../domain/entities/category_sub_entity.dart';
import '../custom_card_category.dart';
import '../see_all/custom_fruit_page.dart';
import '../see_all/custom_see_all_page.dart';

class CustomHomeBodyColumnClass extends StatelessWidget {
  final List<CategorySubEntity> categoryList;
  const CustomHomeBodyColumnClass({super.key, required this.categoryList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              const Text(
                'التصنيفات',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              CustomSeeAllPage(categoryList: categoryList),
                    ),
                  );
                },
                child: Row(
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
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 220,
          child: ListView.separated(
            itemCount: categoryList.length,
            padding: const EdgeInsets.only(left: 10, right: 10),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomFruitPage(
                        catEntity: categoryList[index],
                        subList: categoryList[index].subCat,
                      ),
                    ),
                  );
                },
                child: CustomCardCategory(
                  categoryList: categoryList,
                  index: index,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
