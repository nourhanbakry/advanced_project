import 'package:json_annotation/json_annotation.dart';
part 'login_responce.g.dart';

@JsonSerializable()
class LoginResponce {
  final String? message;
  final bool? status;
  final int? code;
  @JsonKey(name: 'data')
  final UserData? userData;

  LoginResponce({this.message, this.status, this.code, this.userData});

  factory LoginResponce.fromJson(Map<String, dynamic> json) =>
      _$LoginResponceFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponceToJson(this);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
