import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:salety_update/core/di/di.dart';
import '../../../domain/entities/product_entity.dart';
import '../../../domain/repos/home_repo.dart';

part 'get_product_state.dart';

class GetProductCubit extends Cubit<GetProductState> {
  List<ProductEntity> productData = [];
  GetProductCubit() : super(GetProductInitial());

  Future<void> getProductData({int pageNumber = 1}) async {
    emit(GetProductLoading());
    // try {
      return await di<HomeRepo>().getProductData(pageNumber: pageNumber).then((value) {
        if (value != null && value.data != null) {
          productData = ProductEntity.listFromJson(value.data['data']['data']);
          emit(GetProductSuccess(productData));
          // log('productData from ============================ ${value.data['data']['data']}');
          log('productData ============================ ${productData.length}');
        }
      });
    // } catch (e) {
    //   emit(GetProductError('خطأ في تحميل المنتجات'));
    // }
  }
}
