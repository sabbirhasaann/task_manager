import 'package:flutter/material.dart';
import 'package:task_manager/core/constants/app_colors.dart';

/*widgets */
import 'package:task_manager/core/widgets/navigation/app_appbar.dart';
import 'package:task_manager/features/task/presentation/widgets/calendar_widget.dart';
import 'package:task_manager/features/task/presentation/widgets/task_filter_bar.dart';
import 'package:task_manager/features/task/presentation/widgets/task_filter_card.dart';

/* constants */
import 'package:task_manager/core/constants/app_icons.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppAppBar(
          title: 'Today\'s Task',
        ),
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: CalendarWidget(),
            ),

            TaskFilterBar(),

            TaskFilterCard(
              subtitle: "Grocery shopping app design",
              title: "Market Research",
              time: "10:00 AM",
              status: "Done",
              statusBgColor: Color(0xFFEDE4FF),
              statusFrColor: AppColors.primary,
              icon: AppIcons.briefcase,
              iconFrColor: Color(0xFFF478B8),
              iconBgColor: Color(0xFFFFE4F2),
            ),

            TaskFilterCard(
              subtitle: "Grocery shopping app design",
              title: "Competitive Analysis",
              time: "12:00 PM",
              status: "In Progress",
              statusBgColor: Color(0xFFFFE9E1),
              statusFrColor: Color(0xFFFF7D53),
              icon: AppIcons.briefcase,
              iconFrColor: Color(0xFFF478B8),
              iconBgColor: Color(0xFFFFE4F2),
            ),

            TaskFilterCard(
              subtitle: "Uber Eats redesign challenge",
              title: "Create Low-fidelity Wireframe",
              time: "07:00 PM",
              status: "To-do",
              statusBgColor: Color(0xFFE3F2FF),
              statusFrColor: Color(0xFF0087FF),
              icon: AppIcons.userOctagon,
              iconFrColor: Color(0xFF9260F4),
              iconBgColor: Color(0xFFEDE4FF),
            ),

            TaskFilterCard(
              subtitle: "About design sprint",
              title: "How to pitch a Design Sprint",
              time: "09:00 PM",
              status: "To-do",
              statusBgColor: Color(0xFFE3F2FF),
              statusFrColor: Color(0xFF0087FF),
              icon: AppIcons.book,
              iconFrColor: Color(0xFFFF9142),
              iconBgColor: Color(0xFFFFE6D4),
            ),
          ],
        ),
      ),
    );
  }
}
