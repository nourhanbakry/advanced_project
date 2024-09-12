import 'package:advanced_project/features/home/data/models/specilization_responce_model.dart';
import 'package:advanced_project/features/home/logic/home_cubit.dart';
import 'package:advanced_project/features/home/ui/widgets/Specility_List/doctors_specilaity_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class DoctorsSpecialtyListview extends StatefulWidget {
  List<SpecilizationDataList?> specilzationDataList;
  DoctorsSpecialtyListview({super.key, required this.specilzationDataList});

  @override
  State<DoctorsSpecialtyListview> createState() =>
      _DoctorsSpecialtyListviewState();
}

class _DoctorsSpecialtyListviewState extends State<DoctorsSpecialtyListview> {
  var selctedSpeclizationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.specilzationDataList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    setState(() {
                      selctedSpeclizationIndex = index;
                    });
                    context.read<HomeCubit>().getDoctorsList(
                        speclizationID: widget.specilzationDataList[index]?.id);
                  },
                  child: DoctorsSpecilaityListViewWidget(
                      selctedIndex: selctedSpeclizationIndex,
                      index: index,
                      specilzationDataList:
                        widget.specilzationDataList[index]));
            }));
  }
}
