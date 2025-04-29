import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../domain/entities/category_sub_entity.dart';
import 'custom_app_bar_fruit.dart';
import 'custom_list_view_body.dart';
import 'custom_row_search_fruit.dart';

class CustomFruitBody extends StatelessWidget {
  final List<CategorySubEntity> subList;
  final CategorySubEntity catEntity;
  const CustomFruitBody({
    super.key,
    required this.subList,
    required this.catEntity,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppBarFruit(
          catEntity: catEntity,
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              left: 25.w,
              right: 25.w,
              top: isPortrait ? 50.h : 65.h,
            ),
            child: const CustomRowSearchFruit(),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20.h)),
        CustomListViewBody(subList: subList, categoryEntity: catEntity),
      ],
    );
  }
}
