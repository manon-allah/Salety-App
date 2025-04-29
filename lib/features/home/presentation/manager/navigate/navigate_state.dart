part of 'navigate_cubit.dart';

@immutable
sealed class NavigateState {}

final class NavigateInitial extends NavigateState {}

final class NavigateSucces extends NavigateState {}
