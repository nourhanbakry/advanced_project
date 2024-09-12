import 'package:advanced_project/features/home/data/models/specilization_responce_model.dart';
import 'package:advanced_project/features/home/logic/home_cubit.dart';
import 'package:advanced_project/features/home/logic/home_state.dart';
import 'package:advanced_project/features/home/ui/widgets/Doctors_list/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsFailure,
      builder: (context, state) {
        return state.maybeWhen(
            doctorsSuccess: (doctorsList) {return setupSuccess(doctorsList);},
            doctorsFailure: (error) => Center(child: Text(error)),
            orElse: () => const SizedBox());
      },
    );
  }

  Widget setupSuccess(List<DoctorsList?>? doctorsList) {
    return DoctorsListView(doctorsList: doctorsList ?? []);
  }
}
