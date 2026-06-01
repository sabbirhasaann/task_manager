import 'package:flutter/material.dart';

/*constants */
import 'package:task_manager/core/constants/app_text_styles.dart';
import 'package:task_manager/core/constants/app_spacing.dart';

class ProgressTitle extends StatelessWidget {
  final String title;
  final int count;
  const ProgressTitle({
    super.key,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 22,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTextStyles.lexenDecaSemiBold19px,
          ),
          AppGap.wMD,
          CircleAvatar(
            radius: 8,
            child: Text(
              count.toString(),
              style: AppTextStyles.lexenDecaRegular11px,
            ),
          ),
        ],
      ),
    );
  }
}
