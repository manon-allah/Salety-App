import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../domain/entities/category_sub_entity.dart';
import '../../manager/home_cubit/home_cubit.dart';
import 'custom_home/custom_home_body_column_class.dart';

class CustomHomeBodyColumnClassBlocBuilder extends StatelessWidget {
  const CustomHomeBodyColumnClassBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is HomeLoading ||
              current is HomeCategorySuccess ||
              current is HomeError,
      builder: (context, state) {
        final fakeListcat = [
          CategorySubEntity(
            id: 1,
            ord: 1,
            type: '',
            parentId: 1,
            name: '',
            img: '',
            details: '',
            subCat: [],
          ),
          CategorySubEntity(
            id: 1,
            ord: 1,
            type: '',
            parentId: 1,
            name: '',
            img: '',
            details: '',
            subCat: [],
          ),
          CategorySubEntity(
            id: 1,
            ord: 1,
            type: '',
            parentId: 1,
            name: '',
            img: '',
            details: '',
            subCat: [],
          ),
          CategorySubEntity(
            id: 1,
            ord: 1,
            type: '',
            parentId: 1,
            name: '',
            img: '',
            details: '',
            subCat: [],
          ),
          CategorySubEntity(
            id: 1,
            ord: 1,
            type: '',
            parentId: 1,
            name: '',
            img: '',
            details: '',
            subCat: [],
          ),
          CategorySubEntity(
            id: 1,
            ord: 1,
            type: '',
            parentId: 1,
            name: '',
            img: '',
            details: '',
            subCat: [],
          ),
        ];
        if (state is HomeLoading) {
          return Skeletonizer(
            child: CustomHomeBodyColumnClass(categoryList: fakeListcat),
          );
        } else if (state is HomeCategorySuccess) {
          // log('categoryList from ============================ ${categoryList.length}');
          return CustomHomeBodyColumnClass(
            categoryList: state.categoryData,
          );
        } else if (state is HomeError) {
          return const Text('خطأ في تحميل البيانات');
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}