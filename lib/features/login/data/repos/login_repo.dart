import 'package:advanced_project/core/networking/api_error_handler.dart';
import 'package:advanced_project/core/networking/api_result.dart';
import 'package:advanced_project/core/networking/api_services.dart';
import 'package:advanced_project/features/login/data/models/login_request_body.dart';
import 'package:advanced_project/features/login/data/models/login_responce.dart';

class LoginRepo {
  final ApiServices _apiServices;

  LoginRepo(this._apiServices); //DI
  Future<ApiResult<LoginResponce>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiServices.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
