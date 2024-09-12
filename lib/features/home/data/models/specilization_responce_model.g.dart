// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specilization_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecilizationResponceModel _$SpecilizationResponceModelFromJson(
        Map<String, dynamic> json) =>
    SpecilizationResponceModel(
      speclizationDataList: (json['data'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SpecilizationDataList.fromjson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecilizationResponceModelToJson(
        SpecilizationResponceModel instance) =>
    <String, dynamic>{
      'data': instance.speclizationDataList,
    };

SpecilizationDataList _$SpecilizationDataListFromJson(
        Map<String, dynamic> json) =>
    SpecilizationDataList(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      doctorsList: (json['doctors'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : DoctorsList.fromjson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecilizationDataListToJson(
        SpecilizationDataList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctorsList,
    };

DoctorsList _$DoctorsListFromJson(Map<String, dynamic> json) => DoctorsList(
      id: (json['id'] as num?)?.toInt(),
      degree: json['degree'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      price: (json['appoint_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DoctorsListToJson(DoctorsList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'appoint_price': instance.price,
      'degree': instance.degree,
    };
