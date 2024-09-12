import 'package:advanced_project/features/home/data/models/specilization_responce_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
   // sepeclizations
  const factory HomeState.specilizationLoading() = SpecilizationLoading;
  const factory HomeState.specilizationSuccess(List<SpecilizationDataList?>? speclizationDataList) = SpecilizationSuccess;
  const factory HomeState.specilizationFailure(String error) = SpecilizationFailure;

  // doctor specality
  const factory HomeState.doctorsSuccess(List<DoctorsList?>? doctorsList) = DoctorsSuccess;
  const factory HomeState.doctorsFailure(String error) = DoctorsFailure;
}
