import 'package:advanced_project/core/themeing/spacing.dart';
import 'package:advanced_project/features/home/logic/home_cubit.dart';
import 'package:advanced_project/features/home/logic/home_state.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_list_view.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_specialty_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpeclizationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpeclizationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecilizationLoading ||
          current is SpecilizationSuccess ||
          current is SpecilizationFailure,
      builder: (context, state) {
        return state.maybeWhen(
            specilizationLoading: () => setupLoading(),
            specilizationFailure: (error) => Center(child: Text(error)),
            specilizationSuccess: (speclizationResponceModel) {
              var speclizationsList =
                  speclizationResponceModel.speclizationDataList;
              return setupSuccess(speclizationsList);
            },
            orElse: () {
              return const SizedBox();
            });
      },
    );
  }

  Widget setupLoading() {
    return SizedBox(
        height: 100.h, child: const Center(child: CircularProgressIndicator()));
  }

  Widget setupSuccess(speclizationsList) {
    return Expanded(
      child: Column(
        children: [
          DoctorsSpecialtyListview(
              specilzationDataList: speclizationsList ?? []),
          verticalSpacing(8),
          DoctorsListView(doctorsList: speclizationsList?[0]?.doctorsList),
        ],
      ),
    );
  }
}
