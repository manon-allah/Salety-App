import 'package:flutter/material.dart';
import '../../../../../profile/presentation/pages/widgets/custom_app_bar_profile.dart';
import '../../../../domain/entities/category_sub_entity.dart';
import 'custom_see_all_body.dart';

class CustomSeeAllPage extends StatelessWidget {
  final List<CategorySubEntity> categoryList;
  const CustomSeeAllPage({super.key, required this.categoryList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBarProfile(
          text: 'التصنيفات',
          onTap: () {
            Navigator.pop(context);
          },
        ),
        flexibleSpace: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(color: Colors.grey[300]),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
        child: CustomSeeAllBody(categoryData: categoryList),
      ),
    );
  }
}
