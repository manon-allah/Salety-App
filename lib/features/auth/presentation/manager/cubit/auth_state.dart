part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class UserCreateSuccess extends AuthState {}

final class AuthSuccess extends AuthState {}

final class UserCreateError extends AuthState {
  final String errorMessage;

  UserCreateError(this.errorMessage);
}

final class AuthFailure extends AuthState {
  final String errorMessage;

  AuthFailure(this.errorMessage);
}

final class AuthSignOutSuccess extends AuthState {}
