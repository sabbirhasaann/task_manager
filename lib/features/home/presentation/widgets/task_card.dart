import 'package:flutter/material.dart';

/*constants */
import 'package:task_manager/core/constants/app_colors.dart';
import 'package:task_manager/core/constants/app_text_styles.dart';
import 'package:task_manager/core/constants/app_icons.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color bgColor;
  final Color frColor;
  final double percentage;

  const TaskCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.bgColor,
    required this.frColor,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Container(
        padding: EdgeInsets.all(16),
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 32,
              offset: Offset(0, 4),
              color: Color(0xFF000000).withAlpha(10),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(7),
                color: bgColor,
              ),
              child: Center(
                child: Image.asset(
                  AppIcons.briefcase,
                  color: frColor,
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppTextStyles.lexenDecaRegular14px,
                ),
                Text(
                  subTitle,
                  style: AppTextStyles.lexenDecaRegular11px,
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              height: screenSize.width * (40 / 146),
              width: screenSize.width * (40 / 375),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: screenSize.width * (40 / 375),
                    width: screenSize.width * (40 / 375),
                    child: CircularProgressIndicator(
                      value: percentage / 100,
                      backgroundColor: bgColor,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        frColor,
                      ),
                      strokeWidth: 4,
                    ),
                  ),
                  Text(
                    '$percentage%',
                    style: AppTextStyles.lexenDecaRegular11px.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
