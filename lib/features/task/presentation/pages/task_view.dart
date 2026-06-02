import 'package:flutter/material.dart';
import 'package:task_manager/core/constants/app_colors.dart';

/*widgets */
import 'package:task_manager/core/widgets/navigation/app_appbar.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            
          ],
        ),
      ),
    );
  }
}
