import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/di/di.dart';
import '../../../domain/repos/auth_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> registerUser(String email, String password, String cPassword,
      String name, String phone , String address) async {
    emit(AuthLoading());
    try {
      await di<AuthRepo>().registerUser(email, password,cPassword, name , phone , address);
      emit(UserCreateSuccess());
    } catch (e) {
      emit(UserCreateError("Error occurred: $e"));
    }
  }

  Future<void> signin(String email, String password) async {
    emit(AuthLoading());
    try {
      await di<AuthRepo>().signin(email, password);
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure("بيانات غير صحيحة"));
    }
  }

  Future<void> signOut() async {
    emit(AuthLoading());
    try {
      await di<AuthRepo>().signOut();
      emit(AuthSignOutSuccess());
    } catch (e) {
      emit(AuthFailure("Error occurred: $e"));
    }
  }
}
