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


 static void addDioHeaders() {
   dio?.options.headers = {
     'Accept': 'application/json',
     'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzI1OTU1ODc1LCJleHAiOjE3MjYwNDIyNzUsIm5iZiI6MTcyNTk1NTg3NSwianRpIjoiRTN5MzVFY3FzaHJNOFpBMyIsInN1YiI6IjIwODIiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.DnuPIdnzN2a_s8hGotLkLi2SGnL3CkoJ_gcRZuSLIfE',
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
