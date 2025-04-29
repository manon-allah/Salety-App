import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigate_state.dart';

class NavigateCubit extends Cubit<NavigateState> {
  NavigateCubit() : super(NavigateInitial());

  int currentIndex = 2;
  void navigateTo(int pageIndex) {
    currentIndex = pageIndex;
    emit(NavigateSucces());
  }
}
