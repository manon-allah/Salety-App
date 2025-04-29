
abstract class AuthRepo {

  Future<void> registerUser(String email, String password, String cPassword,
      String name, String phone , String address);
  Future<void> signin(String email, String password);
  Future<void> signOut();
}
