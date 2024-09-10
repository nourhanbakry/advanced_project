import 'package:advanced_project/core/networking/api_error_handler.dart';
import 'package:advanced_project/core/networking/api_result.dart';
import 'package:advanced_project/features/home/data/apis/home_api_services.dart';
import 'package:advanced_project/features/home/data/models/specilization_responce_model.dart';

class HomeRepo {
  final HomeApiServices _homeApiServices;

  HomeRepo(this._homeApiServices);

  Future<ApiResult<SpecilizationResponceModel>> getSpeclizedData() async {
    try {
      final response = await _homeApiServices.getSpeclizedData();
      return ApiResult.success(response);
    } catch (error) {
      return  ApiResult.failure(ErrorHandler(error.toString()));
    }
  }
}
