import 'package:advanced_project/core/networking/api_services.dart';
import 'package:advanced_project/core/networking/dio_factory.dart';
import 'package:advanced_project/features/login/data/repos/login_repo.dart';
import 'package:advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & API services
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  // login & cubit
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
