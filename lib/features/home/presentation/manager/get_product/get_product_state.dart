part of 'get_product_cubit.dart';

@immutable
sealed class GetProductState {}

final class GetProductInitial extends GetProductState {}

final class GetProductLoading extends GetProductState {}
final class GetProductSuccess extends GetProductState {
  final List<ProductEntity> productData;

  GetProductSuccess(this.productData);
}

final class GetProductError extends GetProductState {
  final String error;

  GetProductError(this.error);
}
