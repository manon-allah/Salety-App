import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../../core/di/di.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/repos/user_data_repo.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  Future<void> getDataProfile(String token) async {
    emit(GetdataprofileLoading());
    try {
      final user = await di<UserDataRepo>().getUserData(token);
      emit(GetdataprofileSuccess(user));
    } catch (e) {
      emit(GetdataprofileError("Error occurred: $e"));
    }
  }
}
