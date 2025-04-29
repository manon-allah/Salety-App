import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salety_update/features/home/presentation/pages/widgets/custom_card_category.dart';
import '../../../../domain/entities/category_sub_entity.dart';
import 'custom_fruit_page.dart';

class CustomSeeAllBody extends StatelessWidget {
  final List<CategorySubEntity> categoryData;
  const CustomSeeAllBody({super.key, required this.categoryData});

  @override
  Widget build(BuildContext context) {
    log('categoryData =========================== ${categoryData.length}');
    // bool isPortrait =
    //     MediaQuery.of(context).orientation == Orientation.portrait;
    return GridView.builder(
      itemCount: categoryData.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15.h,
        crossAxisSpacing: 15.w,
        childAspectRatio: 4.5 / 5,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => CustomFruitPage(
                      subList: categoryData[index].subCat,
                      catEntity: categoryData[index],
                    ),
              ),
            );
          },
          child: CustomCardCategory(categoryList: categoryData, index: index),
        );
      },
    );
    // ListView.builder(
    //   itemCount: categoryData.length,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: EdgeInsets.only(left: 20.w, right: 20.w),
    //       child: Column(
    //         children: [
    //           SizedBox(height: 10.h),
    //           isPortrait
    //               ? Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   const CustomElementSeeAll(),
    //                   SizedBox(width: 15.w),
    //                   const CustomElementSeeAll(),
    //                 ],
    //               )
    //               : Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   const CustomElementSeeAll(),
    //                   SizedBox(width: 5.w),
    //                   const CustomElementSeeAll(),
    //                   SizedBox(width: 5.w),
    //                   const CustomElementSeeAll(),
    //                   SizedBox(width: 5.w),
    //                   const CustomElementSeeAll(),
    //                 ],
    //               ),
    //           SizedBox(height: 10.h),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
