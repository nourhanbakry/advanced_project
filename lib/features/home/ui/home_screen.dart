import 'package:advanced_project/core/themeing/spacing.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_list_view.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_specialty_list_view.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_specialty_see_all.dart';
import 'package:advanced_project/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpacing(24),
              const DoctorsSpecialtySeeAll(),
              verticalSpacing(16),
              const DoctorsSpecialtyListview(),
              verticalSpacing(8),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
