import 'package:json_annotation/json_annotation.dart';
part 'specilization_responce_model.g.dart';

@JsonSerializable()
class SpecilizationResponceModel {
  @JsonKey(name: "data")
  List<SpecilizationDataList?>? speclizationDataList;

  SpecilizationResponceModel({this.speclizationDataList});

  factory SpecilizationResponceModel.fromjson(Map<String, dynamic> json) =>
      _$SpecilizationResponceModelFromJson(json);
}

@JsonSerializable()
class SpecilizationDataList {
  int? id;
  String? name;
  @JsonKey(name: "doctors")
  List<DoctorsList?>? doctorsList;

  SpecilizationDataList({this.id, this.name, required this.doctorsList});

  factory SpecilizationDataList.fromjson(Map<String, dynamic> json) =>
      _$SpecilizationDataListFromJson(json);
}

@JsonSerializable()
class DoctorsList {
  int? id;
  String? name;
  String? photo;
  String? email;
  String? phone;
  String? gender;
  @JsonKey(name: "appoint_price")
  int? price;
  String? degree;

  DoctorsList(
      {this.id,
      this.degree,
      this.name,
      this.photo,
      this.email,
      this.phone,
      this.gender,
      this.price});

  factory DoctorsList.fromjson(Map<String, dynamic> json) =>
      _$DoctorsListFromJson(json);
}
