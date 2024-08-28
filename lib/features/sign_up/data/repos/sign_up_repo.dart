import 'package:advanced_project/core/networking/api_error_handler.dart';
import 'package:advanced_project/core/networking/api_result.dart';
import 'package:advanced_project/core/networking/api_services.dart';
import 'package:advanced_project/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:advanced_project/features/sign_up/data/models/sign_up_responce.dart';

class SignUpRepo {
  final ApiServices _apiServices;

  SignUpRepo(this._apiServices);

  Future<ApiResult<SignUpResponce>> signUp(SignUpRequestBody signUpRequestBody) async {
    
    try {
      final response = await _apiServices.signup(signUpRequestBody);
      return  ApiResult.success(response);

    } catch (error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
