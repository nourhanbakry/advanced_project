import 'package:advanced_project/core/helper/exctensions.dart';
import 'package:advanced_project/core/networking/api_error_handler.dart';
import 'package:advanced_project/features/home/data/models/specilization_responce_model.dart';
import 'package:advanced_project/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecilizationDataList?>? speclizationsListOfData =
      []; //عمل ليست جديده يحط فيها الداتا الي جايه اوريدي في ليست عشان افلتر منها
  void getSpeclizedData() async {
    emit(const HomeState.specilizationLoading());
    final result = await _homeRepo.getSpeclizedData();
    result.when(
      success: (speclizationDataList) {
        speclizationsListOfData =
            speclizationDataList.speclizationDataList ?? [];
        
        // gettting the doctors list for the first speclizations by default
        getDoctorsList(speclizationID: speclizationsListOfData?.first?.id);

        emit(HomeState.specilizationSuccess(speclizationsListOfData));
      },
      failure: (message) =>
          emit(HomeState.specilizationFailure(ErrorHandler.handel(message))),
    );
  }

  void getDoctorsList({required int? speclizationID}) {
    List<DoctorsList?>? speclizationsDoctorsList =
        getDoctorsListBySpeclizationID(speclizationID: speclizationID);

    if (!speclizationsDoctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(speclizationsDoctorsList));
    } else {
      emit(const HomeState.doctorsFailure("No doctors found"));
    }
  }

  getDoctorsListBySpeclizationID({required int? speclizationID}) {
    return speclizationsListOfData
        ?.firstWhere((speclization) => speclization?.id == speclizationID)
        ?.doctorsList;
  }
}
