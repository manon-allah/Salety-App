import 'package:dio/dio.dart';
import '../../../../core/di/di.dart';
import '../../../../core/network/dio.dart';
import '../../../../core/network/endpoints.dart';
import '../../domain/repos/home_repo.dart';

class HomeRepoImp extends HomeRepo {
  @override
  Future<Response?> getSliderData() async {
    return await di<DioHelper>().getData(
      url: baseUrl + sliderEndpoint,
    );
  }
  
  @override
  Future<Response?> getCategorySubData() async {
    return await di<DioHelper>().getData(
      url: baseUrl + categorySubEndpoint,
    );
    
  }
  
  @override
  Future<Response?> getProductData({int pageNumber = 1}) async {
    return await di<DioHelper>().getData(
      url: baseUrl + productEndpoint,
      param: {
        'page': pageNumber,
      },
    );
  }
}
