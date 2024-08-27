import 'package:advanced_project/core/networking/api_constant.dart';
import 'package:advanced_project/features/login/data/models/login_request_body.dart';
import 'package:advanced_project/features/login/data/models/login_responce.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part "api_services.g.dart";
@RestApi(baseUrl: APIConstant.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio,{String baseUrl}) = _ApiServices;

  @POST(APIConstant.login)
  Future<LoginResponce> login(@Body() LoginRequestBody loginRequestBody);
}
