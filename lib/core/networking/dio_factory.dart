import 'package:advanced_project/core/helper/constatns.dart';
import 'package:advanced_project/core/helper/shared_preferences_helper.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timeout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;
      addDioHeaders();
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async{
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${await SharedPreferencesHelper.getSecuredString(SharedPrefKey.userToken)}',
    };
  }
 
 static void setTokenAfterLogin(String token) async{
   dio?.options.headers = {
      'Authorization': 'Bearer $token',
    };
 }


  static void addDioInterceptors() {
    dio?.interceptors.add(PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
    ));
  }
}
