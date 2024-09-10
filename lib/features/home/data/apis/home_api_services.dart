import 'package:advanced_project/core/networking/api_constant.dart';
import 'package:advanced_project/features/home/data/apis/home_api_constants.dart';
import 'package:advanced_project/features/home/data/models/specilization_responce_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'home_api_services.g.dart';

@RestApi(baseUrl: APIConstant.baseUrl)
abstract class HomeApiServices {
  factory HomeApiServices(Dio dio) = _HomeApiServices;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecilizationResponceModel> getSpeclizedData();
}
