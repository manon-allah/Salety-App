import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salety_update/features/home/presentation/manager/get_product/get_product_cubit.dart';
import '../../../domain/entities/product_entity.dart';
import 'custom_grid_views_body_best_seller.dart';

class CustomBestSellerAllBody extends StatefulWidget {
  final List<ProductEntity> productList;
  const CustomBestSellerAllBody({super.key, required this.productList});

  @override
  State<CustomBestSellerAllBody> createState() =>
      _CustomBestSellerAllBodyState();
}

class _CustomBestSellerAllBodyState extends State<CustomBestSellerAllBody> {
  late final ScrollController scrollController;
  var nextPage = 2;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [CustomGridViewsBodyBestSeller(productList: widget.productList)],
    );
  }

  void scrollListener() async {
    final currentPosition = scrollController.position.pixels;
    final maxScrollExtent = scrollController.position.maxScrollExtent;
    if (currentPosition >= 0.7 * maxScrollExtent) {
      if (!isLoading) {
        setState(() {
          isLoading = true;
        });
        await BlocProvider.of<GetProductCubit>(
          context,
        ).getProductData(pageNumber: nextPage++);
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }
}
