import 'package:flutter/material.dart';

/*constants */
import 'package:task_manager/core/constants/app_colors.dart';
import 'package:task_manager/core/constants/app_spacing_1.dart';
import 'package:task_manager/core/constants/app_text_styles.dart';

/*widget */
import 'package:task_manager/features/home/presentation/widgets/home_card.dart';
import 'package:task_manager/features/home/presentation/widgets/home_app_bar.dart';
import 'package:task_manager/features/home/presentation/widgets/progress_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          HomeAppBar(),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 22.0),
            child: HomeCard(),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 22,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'In Progress',
                  style: AppTextStyles.lexenDecaSemiBold19px,
                ),
                AppGap.wMD,
                CircleAvatar(
                  radius: 8,
                  child: Text(
                    '5',
                    style: AppTextStyles.lexenDecaRegular11px,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 22),
            child: SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProgressCard(
                    title: 'Office Project',
                    subtitle: 'Grocery shopping app design',
                    cardColor: Color(0xFFE7F3FF),
                    iconColor: Color(0xFFF478B8),
                    iconBgColor: Color(0xFFFFE4F2),
                    sliderColor: Color(0xFF0087FF),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  ProgressCard(
                    title: 'Personal Project',
                    subtitle: 'Uber Eats redesign challange',
                    cardColor: Color(0xFFFFE9E1),
                    iconColor: Color(0xFF0087FF),
                    iconBgColor: Color(0xFFE7F3FF),
                    sliderColor: Color(0xFFFF7D53),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
