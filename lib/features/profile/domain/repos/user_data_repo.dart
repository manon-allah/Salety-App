import '../entities/user_entity.dart';

abstract class UserDataRepo {
  Future<UserEntitiy> getUserData(String token);
}