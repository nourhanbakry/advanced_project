import 'package:advanced_project/core/themeing/spacing.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 16.h),
          child: Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.network(
                  "https://media.istockphoto.com/id/179011088/photo/indian-doctor.jpg?s=612x612&w=0&k=20&c=EwRn1EWy79prCtdo8yHM6hvCVVcaKTznVBpVURPJxt4=",
                  height: 130.h,
                  width: 110.w,
                  fit: BoxFit.cover),
            ),
            horizontalSpacing(16),
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text("Dr. John Smith",
                      style: TextStyles.font18DarkBlueBold,
                      overflow: TextOverflow.ellipsis),
                  verticalSpacing(5),
                  Text("Major | Dermatologist",
                      style: TextStyles.font12GreyRegular),
                  verticalSpacing(5),
                  Text("Email", style: TextStyles.font12GreyRegular),
                ]))
          ]),
        );
      },
    ));
  }
}
