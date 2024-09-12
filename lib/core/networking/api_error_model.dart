import 'package:advanced_project/core/helper/exctensions.dart';
import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? statusCode;
  @JsonKey(name: 'data')
  final Map<String, dynamic>? errorsMap;

  ApiErrorModel({this.message, this.statusCode,this.errorsMap});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);


  String getErrorMessage() {
    if(errorsMap.isNullOrEmpty())  return message ?? "Unknown error";

   final errorMessage = errorsMap!.entries
        .map((entry) => "${entry.key}: ${entry.value}")
        .join("\n");

    return errorMessage;

  }
}
