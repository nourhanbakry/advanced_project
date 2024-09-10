import 'package:advanced_project/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getSpeclizedData() async {
    emit(const HomeState.specilizationLoading());
    final result = await _homeRepo.getSpeclizedData();
    result.when(
      success: (speclizationResponceModel) => emit(HomeState.specilizationSuccess(speclizationResponceModel)),
      failure: (message) => emit(HomeState.specilizationFailure(message.message)),
    );
  }
 
}
