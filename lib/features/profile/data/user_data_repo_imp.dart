import 'package:dio/dio.dart';
import '../../../core/di/di.dart';
import '../../../core/network/dio.dart';
import '../../../core/network/endpoints.dart';
import '../domain/entities/user_entity.dart';
import '../domain/repos/user_data_repo.dart';

class UserDataRepoImp extends UserDataRepo {
  @override
  Future<UserEntitiy> getUserData(String token) async {
    Response response =
        await di<DioHelper>().getData(url: baseUrl + profileEndpoint , token: token);

    // log('response.data ==================================== ${response.data}');

    if (response.statusCode == 200) {
      return UserEntitiy.fromJson(response.data);
    } else {
      throw Exception("Failed to fetch user data: ${response.statusCode}");
    }
  }
}
