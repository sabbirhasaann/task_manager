import 'package:flutter/material.dart';

/*constants */
import 'package:task_manager/core/constants/app_colors.dart';

/*widget */
import 'package:task_manager/features/home/presentation/widgets/home_card.dart';
import 'package:task_manager/core/widgets/navigation/app_appbar.dart';
import 'package:task_manager/features/home/presentation/widgets/progress_card.dart';
import 'package:task_manager/features/home/presentation/widgets/progress_title.dart';
import 'package:task_manager/features/home/presentation/widgets/task_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppAppBar(
          isHome: true,
        ),
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22.0),
              child: HomeCard(),
            ),

            ProgressTitle(
              title: 'In Progress',
              count: 2,
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
            ProgressTitle(
              title: 'Task Group',
              count: 4,
            ),

            TaskCard(
              title: 'Office Project',
              subTitle: '23 Tasks',
              frColor: Color(0xFFF478B8),
              bgColor: Color(0xFFFFE4F2),
              percentage: 70,
            ),

            TaskCard(
              title: 'Person Project',
              subTitle: '30 Tasks',
              frColor: Color(0xFF9260F4),
              bgColor: Color(0xFFEDE4FF),
              percentage: 52,
            ),

            TaskCard(
              title: 'Daily Project',
              subTitle: '30 Tasks',
              frColor: Color(0xFFFF9142),
              bgColor: Color(0xFFFFE6D4),
              percentage: 87,
            ),

            TaskCard(
              title: 'Daily Study',
              subTitle: '3 Tasks',
              frColor: Color(0xFFFFD12E),
              bgColor: Color(0xFFFFF6D4),
              percentage: 87,
            ),
          ],
        ),
      ),
    );
  }
}
