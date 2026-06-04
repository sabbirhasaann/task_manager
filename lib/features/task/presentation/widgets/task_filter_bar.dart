import 'package:flutter/material.dart';
import 'package:task_manager/core/constants/app_colors.dart';
import 'package:task_manager/core/constants/app_text_styles.dart';

class TaskFilterBar extends StatelessWidget {
  const TaskFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> taskFilter = [
      "All",
      "To do",
      "In Progress",
      "Completed",
    ];
    int active = 0;
    return SizedBox(
      height: 38,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: 22,
        ),
        itemBuilder: (context, index) {
          final filter = taskFilter[index];
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 8,
            ),

            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(9),
              color: active == index ? AppColors.primary : Color(0xFFEDE8FF),
            ),
            child: Text(
              filter,
              style: AppTextStyles.lexenDecaSemiBold14px.copyWith(
                color: active == index ? AppColors.white : AppColors.primary,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 12,
          );
        },
        itemCount: taskFilter.length,
      ),
    );
  }
}
