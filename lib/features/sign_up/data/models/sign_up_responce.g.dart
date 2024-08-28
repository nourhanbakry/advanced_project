// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponce _$SignUpResponceFromJson(Map<String, dynamic> json) =>
    SignUpResponce(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
      userData: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpResponceToJson(SignUpResponce instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'code': instance.code,
      'data': instance.userData,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      token: json['token'] as String?,
      userName: json['username'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'token': instance.token,
      'username': instance.userName,
    };
