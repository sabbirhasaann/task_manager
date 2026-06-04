import 'package:flutter/material.dart';
import 'package:task_manager/core/constants/app_colors.dart';

/*widgets */
import 'package:task_manager/core/widgets/navigation/app_appbar.dart';
import 'package:task_manager/features/task/presentation/widgets/calendar_widget.dart';
import 'package:task_manager/features/task/presentation/widgets/task_filter_bar.dart';

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
          ],
        ),
      ),
    );
  }
}
