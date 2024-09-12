
import 'package:advanced_project/features/home/data/models/specilization_responce_model.dart';
import 'package:advanced_project/features/home/ui/widgets/Doctors_list/doctors_list_view_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorsListView extends StatelessWidget {
  List<DoctorsList?>? doctorsList;
  DoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: doctorsList?.length,
      itemBuilder: (context, index) {
        return DoctorsListViewWidget(doctorsList: doctorsList?[index] );
      },
    ));
  }
}
