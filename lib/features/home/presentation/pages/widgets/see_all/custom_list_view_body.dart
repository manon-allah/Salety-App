import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../domain/entities/category_sub_entity.dart';
import '../custom_home/custom_card_best_seller.dart';

class CustomListViewBody extends StatelessWidget {
  final List<CategorySubEntity> subList;
  final CategorySubEntity categoryEntity;
  const CustomListViewBody({
    super.key,
    required this.subList,
    required this.categoryEntity,
  });

  @override
  Widget build(BuildContext context) {
    // bool isPortrait =
    //     MediaQuery.of(context).orientation == Orientation.portrait;
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid.builder(
        itemCount: subList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15.h,
          crossAxisSpacing: 15.h,
          childAspectRatio: 2.9 / 5,
        ),
        itemBuilder: (context, index) {
          return CustomCardBestSeller(
            subEntity: subList[index],
            categoryEntity: categoryEntity,
          );
        },
      ),
    );
  }
}
