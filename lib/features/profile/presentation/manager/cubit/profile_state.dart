part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class GetdataprofileLoading extends ProfileState {}

final class GetdataprofileSuccess extends ProfileState {
  final UserEntitiy user;

  GetdataprofileSuccess(this.user);
}

final class GetdataprofileError extends ProfileState {
  final String errorMessage;

  GetdataprofileError(this.errorMessage);
}
