import 'package:flutter/material.dart';

/*constants */
import 'package:task_manager/core/constants/app_colors.dart';

/*widget */
import 'package:task_manager/features/home/presentation/widgets/home_card.dart';
import 'package:task_manager/features/home/presentation/widgets/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          HomeAppBar(),

          HomeCard(),
        ],
      ),
    );
  }
}
