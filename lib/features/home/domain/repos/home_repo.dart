import 'package:dio/dio.dart';

abstract class HomeRepo {
  Future<Response?> getSliderData();
  Future<Response?> getCategorySubData();
  Future<Response?> getProductData({int pageNumber = 1});
}