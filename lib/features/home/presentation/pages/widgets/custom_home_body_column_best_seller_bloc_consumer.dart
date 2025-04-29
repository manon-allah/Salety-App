import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salety_update/features/home/presentation/manager/get_product/get_product_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../domain/entities/product_entity.dart';
import 'custom_home/custom_home_body_column_best_seller.dart';

class CustomHomeBodyColumnBestSellerBlocConsumer extends StatefulWidget {
  const CustomHomeBodyColumnBestSellerBlocConsumer({super.key});

  @override
  State<CustomHomeBodyColumnBestSellerBlocConsumer> createState() =>
      _CustomHomeBodyColumnBestSellerBlocConsumerState();
}

class _CustomHomeBodyColumnBestSellerBlocConsumerState
    extends State<CustomHomeBodyColumnBestSellerBlocConsumer> {
  List<ProductEntity> productList = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetProductCubit, GetProductState>(
      listener: (context, state) {
        if (state is GetProductSuccess) {
          productList.addAll(state.productData);
        }
      },
      builder: (context, state) {
        final fakeList = List.generate(
          6,
          (index) => ProductEntity(
            id: 1,
            name: 'Product Name',
            categoryId: 1,
            barcode: '',
            barcodeNumber: '',
            brandId: 1,
            colorId: 1,
            countryId: 1,
            createdAt: DateTime.now(),
            deletedAt: '',
            details: '',
            detailsEn: '',
            discount: 0,
            hashNumber: '',
            img: '',
            isActive: '',
            isFavorite: 0,
            isUsed: '',
            nameEn: '',
            price: '',
            notifiQuantity: 0,
            numViews: 0,
            ord: 0,
            priceAfterDiscount: 0,
            productAttributes: [],
            productCode: '',
            quantity: 0,
            repositoryNumber: '',
            sku: '',
            stokeId: 0,
            tag: '',
            tagEn: '',
            taxId: '',
            type: 0,
            updatedAt: DateTime(DateTime.now().millisecondsSinceEpoch),
            userAdded: '',
            userId: 0,
            userIp: '',
            userPcInfo: '',
            weight: 0,
          ),
        );
        if (state is GetProductLoading) {
          return Skeletonizer(
            child: CustomHomeBodyColumnBestSeller(productList: fakeList),
          );
        } else if (state is GetProductSuccess) {
          // log('sliderList from ============================ ${sliderList.length}');
          return CustomHomeBodyColumnBestSeller(productList: productList);
        } else if (state is GetProductError) {
          return const Text('خطأ في تحميل المنتجات');
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
