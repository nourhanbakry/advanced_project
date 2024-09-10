import 'package:advanced_project/features/home/data/models/specilization_responce_model.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_specilaity_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class DoctorsSpecialtyListview extends StatelessWidget {
  List<SpecilizationDataList?> specilzationDataList;
  DoctorsSpecialtyListview({super.key, required this.specilzationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: specilzationDataList.length,
            itemBuilder: (context, index) {
              return DoctorsSpecilaityListViewWidget(index: index,specilzationDataList: specilzationDataList[index]);
            }));
  }
}
