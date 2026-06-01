import 'package:flutter/material.dart';

/*constants */
import 'package:task_manager/core/constants/app_colors.dart';
import 'package:task_manager/core/constants/app_spacing_1.dart';
import 'package:task_manager/core/constants/app_text_styles.dart';
import 'package:task_manager/core/constants/app_icons.dart';

class ProgressCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color cardColor;
  final Color iconColor;
  final Color iconBgColor;
  final Color sliderColor;

  const ProgressCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.cardColor,
    required this.iconColor,
    required this.iconBgColor,
    required this.sliderColor,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(16.0),
      width: screenSize.width * (220 / 375),
      height: 130,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(19),
        color: cardColor,
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
                  AppIcons.briefcase,
                  color: iconColor,
                  width: 14,
                  height: 14,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.lexenDecaRegular11px.copyWith(
                  color: AppColors.secondary,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                subtitle,
                style: AppTextStyles.lexenDecaRegular14px.copyWith(
                  color: AppColors.black,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              LinearProgressIndicator(
                value: 0.5,
                backgroundColor: Colors.white,
                color: sliderColor,
                minHeight: 6,
                borderRadius: BorderRadius.circular(
                  AppRadius.full,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
