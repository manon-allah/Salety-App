import 'dart:developer';
import 'package:dio/dio.dart';
import '../../../../core/di/di.dart';
import '../../../../core/network/dio.dart';
import '../../../../core/network/endpoints.dart';
import '../../../../core/services/caching.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/repos/auth_repo.dart';

class AuthRepoImp extends AuthRepo {

  LoginEntity? loginEntity;

  @override
  Future<void> registerUser(String email, String password, String cPassword,
      String name, String phone , String address) async {
    try {
      Map<String, dynamic> data = {
        "email": email,
        "password": password,
        "c_password": cPassword,
        "name": name,
        "mobile": phone,
        "address": address,
      };

      Response response =
          await di<DioHelper>().postData(url: regUrl, data: data);
      // log('response.data ==================================== ${response.data}');
      if (response.statusCode == 200) {
      } else {
        throw Exception("فشل إنشاء المستخدم: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error occurred during register: $e");
    }
  }

  @override
  Future<void> signin(String email, String password) async {
    try {
      Map<String, dynamic> data = {
        "phone_email": email,
        "password": password,
      };
      Response response =
          await di<DioHelper>().postData(url: signInUrl, data: data);
      log('response.statusCode ==================================== ${response.statusCode}');
      // log('response.data ==================================== ${response.data}');
      loginEntity = LoginEntity.fromJson(response.data);
      if (loginEntity!.status == true) {
        String token = loginEntity!.data.token;
        String name = loginEntity!.data.name;
        String address = loginEntity!.data.address;
        
        // log('response.data ==================================== ${response.data}');

        await CacheHelper.setData(key: 'auth_token', value: token);
        // log('auth_token ==================================== ${CacheHelper.getData(key: 'auth_token')}');
        await CacheHelper.setData(key: 'name', value: name);
        log('name ==================================== ${CacheHelper.getData(key: 'name')}');
        await CacheHelper.setData(key: 'address', value: address);
      } else {
        throw Exception('بيانات غير صحيحة');
      }
    } catch (e) {
      throw Exception("Error occurred during signin: $e");
    }
  }

  @override
  Future<void> signOut() async {
    await CacheHelper.deleteData(key: 'auth_token');
    log('User logged out');
  }
}
