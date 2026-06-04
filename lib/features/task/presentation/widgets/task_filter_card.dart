import 'package:flutter/material.dart';

/* constants*/
import 'package:task_manager/core/constants/app_colors.dart';
import 'package:task_manager/core/constants/app_icons.dart';
import 'package:task_manager/core/constants/app_spacing.dart';
import 'package:task_manager/core/constants/app_text_styles.dart';

class TaskFilterCard extends StatelessWidget {
  final String subtitle;
  final String title;
  final String time;
  final String status;
  final Color statusBgColor;
  final Color statusFrColor;
  final String icon;
  final Color iconBgColor;
  final Color iconFrColor;

  const TaskFilterCard({
    super.key,
    required this.subtitle,
    required this.title,
    required this.time,
    required this.status,
    required this.statusBgColor,
    required this.statusFrColor,
    required this.icon,
    required this.iconBgColor,
    required this.iconFrColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 32,
            offset: Offset(0, 4),
            color: AppColors.black.withAlpha(10),
          ),
        ],
      ),

      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(7),
                color: iconBgColor,
              ),
              child: Center(
                child: Image.asset(
                  icon,
                  color: iconFrColor,
                  width: 14,
                  height: 14,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(AppRadius.full),
                color: statusBgColor,
              ),
              child: Text(
                status,
                style: AppTextStyles.lexenDecaBold11px.copyWith(
                  fontSize: 10,
                  color: statusFrColor,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle,
                style: AppTextStyles.lexenDecaRegular11px.copyWith(
                  color: AppColors.secondary,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: AppTextStyles.lexenDecaBold14px.copyWith(),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Image.asset(
                    AppIcons.timeCircle,
                    height: 14,
                    width: 14,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    time,
                    style: AppTextStyles.lexenDecaRegular11px.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
