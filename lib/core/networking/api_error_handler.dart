import 'package:advanced_project/core/networking/api_error_model.dart';
import 'package:dio/dio.dart';

class ErrorHandler {
  ApiErrorModel? apiErrorModel;

  static ApiErrorModel handel(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: "Connection to server failed");

        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
              message: "Receive timeout in connection with API");

        case DioExceptionType.sendTimeout:
          return ApiErrorModel(message: "Send timeout in connection with API");

        case DioExceptionType.cancel:
          return ApiErrorModel(message: "Request to API was cancelled");

        case DioExceptionType.badResponse:
          return handleError(error.response?.data);

        case DioExceptionType.unknown:
          return ApiErrorModel(message: "Unknown error occured");

        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: "Connection timeout with API");

        default:
          return ApiErrorModel(message: "Unknown error occured");
      }
    } else {
      return ApiErrorModel(message: "Unknown error occured");
    }
  }
}

ApiErrorModel handleError(dynamic data) {
  return ApiErrorModel(
      message: data['message'] ?? "Unknown error occured",
      statusCode: data['code'],
      errorsMap: data['data']);
}
