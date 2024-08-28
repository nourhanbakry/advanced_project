import 'package:json_annotation/json_annotation.dart';
part 'sign_up_responce.g.dart';

@JsonSerializable()
class SignUpResponce {
  final String? message;
  final bool? status;
  final int? code;
  @JsonKey(name: 'data')
  final UserData? userData;

  SignUpResponce({this.message, this.status, this.code, this.userData});

  factory SignUpResponce.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponceFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpResponceToJson(this);
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
