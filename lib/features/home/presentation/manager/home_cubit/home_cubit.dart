import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../../core/di/di.dart';
import '../../../domain/entities/category_sub_entity.dart';
import '../../../domain/entities/slider_entity.dart';
import '../../../domain/repos/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  List<SliderEntity> sliderData = [];
  List<CategorySubEntity> categoryData = [];
  HomeCubit() : super(HomeInitial());

  Future<void> getSliderData() async {
    emit(HomeLoading());
    try {
      return await di<HomeRepo>().getSliderData().then((value) {
        if (value != null && value.data != null) {
          sliderData = SliderEntity.listFromJson(value.data['data']);
          emit(HomeSlideSuccess(sliderData));
          // log('sliderData from ============================ ${value.data['data']}');
          log('sliderData ============================ ${sliderData.length}');
        }
      });
    } catch (e) {
      emit(HomeError('خطأ في تحميل البيانات'));
    }
  }

  Future<void> getCategorySubData() async {
    emit(HomeLoading());
    try {
      return await di<HomeRepo>().getCategorySubData().then((value) {
        if (value != null && value.data != null) {
          categoryData = CategorySubEntity.listFromJson(value.data['data']);
          emit(HomeCategorySuccess(categoryData));
          // log('categoryData from ============================ ${value.data['data']}');
          log('categoryData ============================ ${categoryData.length}');
        }
      });
    } catch (e) {
      emit(HomeError('خطأ في تحميل البيانات'));
    }
  }
}
