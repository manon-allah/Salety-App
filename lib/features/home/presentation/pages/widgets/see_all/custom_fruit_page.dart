import 'package:flutter/material.dart';
import '../../../../domain/entities/category_sub_entity.dart';
import 'custom_fruit_body.dart';

class CustomFruitPage extends StatelessWidget {
  final List<CategorySubEntity> subList;
  final CategorySubEntity catEntity;
  const CustomFruitPage({super.key, required this.subList, required this.catEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: CustomFruitBody(subList: subList , catEntity: catEntity ,),
    );
  }
}
