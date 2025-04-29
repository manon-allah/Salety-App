import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../domain/entities/slider_entity.dart';
import '../../manager/home_cubit/home_cubit.dart';
import 'custom_home/custom_home_body_column_better.dart';

class CustomHomeBodyColumnBetterBlocBuilder extends StatelessWidget {
  const CustomHomeBodyColumnBetterBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is HomeLoading ||
              current is HomeSlideSuccess ||
              current is HomeError,
      builder: (context, state) {
        final List<SliderEntity> fakeList = [
          SliderEntity(
            id: 1,
            img: '',
            name: 'Slider 1',
            ord: 1,
            type: '1',
            urlL: '',
            withId: 1,
          ),
          SliderEntity(
            id: 2,
            img: '',
            name: 'Slider 2',
            ord: 2,
            type: '2',
            urlL: '',
            withId: 2,
          ),
          SliderEntity(
            id: 3,
            img: '',
            name: 'Slider 3',
            ord: 3,
            type: '3',
            urlL: '',
            withId: 3,
          ),
          SliderEntity(
            id: 4,
            img: '',
            name: 'Slider 4',
            ord: 4,
            type: '4',
            urlL: '',
            withId: 4,
          ),
        ];
        if (state is HomeLoading) {
          return Skeletonizer(
            child: CustomHomeBodyColumnBetter(sliderList: fakeList),
          );
        } else if (state is HomeSlideSuccess) {
          // log('sliderList from ============================ ${sliderList.length}');
          return CustomHomeBodyColumnBetter(sliderList: state.sliderData);
        } else if (state is HomeError) {
          return const Text('خطأ في تحميل البيانات');
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
