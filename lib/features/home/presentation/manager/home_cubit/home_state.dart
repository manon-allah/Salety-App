part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}
final class HomeSlideSuccess extends HomeState {
  final List<SliderEntity> sliderData;

  HomeSlideSuccess(this.sliderData);
}

final class HomeCategorySuccess extends HomeState {
  final List<CategorySubEntity> categoryData;

  HomeCategorySuccess(this.categoryData);
}

final class HomeError extends HomeState {
  final String error;

  HomeError(this.error);
}
