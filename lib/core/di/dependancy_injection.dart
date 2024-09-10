import 'package:advanced_project/core/networking/api_services.dart';
import 'package:advanced_project/core/networking/dio_factory.dart';
import 'package:advanced_project/features/home/data/apis/home_api_services.dart';
import 'package:advanced_project/features/home/data/repos/home_repo.dart';
import 'package:advanced_project/features/home/logic/home_cubit.dart';
import 'package:advanced_project/features/login/data/repos/login_repo.dart';
import 'package:advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_project/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:advanced_project/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & API services
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  // loginRepo & cubit
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // signupRepo & cubit
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
  // homeAPI Services& homeRepo & cubit
  getIt.registerLazySingleton<HomeApiServices>(()=> HomeApiServices(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => (HomeCubit(getIt())));
}
