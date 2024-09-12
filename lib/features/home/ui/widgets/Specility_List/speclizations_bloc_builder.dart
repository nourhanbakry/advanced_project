import 'package:advanced_project/core/themeing/spacing.dart';
import 'package:advanced_project/features/home/logic/home_cubit.dart';
import 'package:advanced_project/features/home/logic/home_state.dart';
import 'package:advanced_project/features/home/ui/widgets/Doctors_list/doctors_shimmer_loading.dart';
import 'package:advanced_project/features/home/ui/widgets/Specility_List/doctors_specialty_list_view.dart';
import 'package:advanced_project/features/home/ui/widgets/Specility_List/specilty_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpeclizationsBlocBuilder extends StatelessWidget {
  const SpeclizationsBlocBuilder({super.key});

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
            specilizationSuccess: (speclizationDataList) {
              return setupSuccess(speclizationDataList);
            },
            orElse: () {
              return const SizedBox();
            });
      },
    );
  }
 // shimmer loading for speclizations and doctors instesd of circular progress indicator
  Widget setupLoading() {
    return Column(
      children: [
        const SpecialityShimmerLoading(),
        verticalSpacing(8),
        const DoctorsShimmerLoading(),
      ],
    );
  }

  Widget setupSuccess(speclizationsList) {
    return DoctorsSpecialtyListview(
        specilzationDataList: speclizationsList ?? []);
  }
}
