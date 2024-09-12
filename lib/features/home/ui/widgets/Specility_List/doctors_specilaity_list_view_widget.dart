import 'package:advanced_project/core/themeing/colors.dart';
import 'package:advanced_project/core/themeing/spacing.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:advanced_project/features/home/data/models/specilization_responce_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecilaityListViewWidget extends StatelessWidget {
  final SpecilizationDataList? specilzationDataList;
  final int selctedIndex;
  final int index;
  const DoctorsSpecilaityListViewWidget(
      {super.key,
      this.specilzationDataList,
      required this.index,
      required this.selctedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w, top: 10.h),
        child: Column(
          children: [
            index == selctedIndex
                ? Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorsManager.darkBlue),
                        shape: BoxShape.circle),
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: ColorsManager.lightBlue,
                      child: SvgPicture.asset("assets/svgs/notifications.svg",
                          height: 42.h, width: 42.w),
                    ))
                : CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManager.lightBlue,
                    child: SvgPicture.asset("assets/svgs/notifications.svg",
                        height: 40.h, width: 40.w)),
            verticalSpacing(8),
            Text(specilzationDataList?.name ?? "speciality",
                style: index == selctedIndex
                    ? TextStyles.font14DarkBlueMedium
                    : TextStyles.font13DarkBlueRegular)
          ],
        ));
  }
}
