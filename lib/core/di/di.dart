import 'package:get_it/get_it.dart';
import 'package:salety_update/features/home/presentation/manager/get_product/get_product_cubit.dart';
import '../../features/auth/data/repos/auth_repo_imp.dart';
import '../../features/auth/domain/repos/auth_repo.dart';
import '../../features/auth/presentation/manager/cubit/auth_cubit.dart';
import '../../features/home/data/repos/home_repo_imp.dart';
import '../../features/home/domain/repos/home_repo.dart';
import '../../features/home/presentation/manager/home_cubit/home_cubit.dart';
import '../../features/profile/data/user_data_repo_imp.dart';
import '../../features/profile/domain/repos/user_data_repo.dart';
import '../../features/profile/presentation/manager/cubit/profile_cubit.dart';
import '../network/dio.dart';

GetIt di = GetIt.instance;

Future init() async {
  di.registerFactory<DioHelper>(() => DioImplementation());
  di.registerFactory<AuthRepo>(() => AuthRepoImp());
  di.registerFactory<UserDataRepo>(() => UserDataRepoImp());
  di.registerFactory<HomeRepo>(() => HomeRepoImp());
  di.registerFactory<AuthCubit>(() => AuthCubit());
  di.registerFactory<ProfileCubit>(() => ProfileCubit());
  di.registerFactory<HomeCubit>(() => HomeCubit());
  di.registerFactory<GetProductCubit>(() => GetProductCubit());
}
