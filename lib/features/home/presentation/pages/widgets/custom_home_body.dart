import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salety_update/features/home/presentation/manager/get_product/get_product_cubit.dart';
import '../../manager/home_cubit/home_cubit.dart';
import 'custom_home/custom_home_body_body.dart';
import 'custom_home/custom_home_body_header.dart';

class CustomHomeBody extends StatefulWidget {
  const CustomHomeBody({super.key});

  @override
  State<CustomHomeBody> createState() => _CustomHomeBodyState();
}

class _CustomHomeBodyState extends State<CustomHomeBody> {
  late final homeCubit = context.read<HomeCubit>();
  late final productCubit = context.read<GetProductCubit>();
  @override
  void initState() {
    super.initState();
    getDataHome();
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: CustomHomeBodyHeader()),
        SliverToBoxAdapter(child: CustomHomeBodyBody()),
      ],
    );
  }
  
  void getDataHome() {
    homeCubit.getCategorySubData();
    homeCubit.getSliderData();
    productCubit.getProductData();
  }
}
