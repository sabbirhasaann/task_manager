import 'package:flutter/material.dart';
import 'package:task_manager/core/constants/app_spacing.dart';
import 'package:task_manager/core/constants/app_icons.dart';
import 'package:task_manager/core/constants/app_text_styles.dart';
import 'package:task_manager/core/widgets/barrel_button_clipper.dart';
import '../../constants/app_colors.dart';

enum ButtonVariants { primary, secondary }

class AppButton extends StatelessWidget {
  final ButtonVariants variants;
  final String label;
  final VoidCallback onPressed;
  final double? width;
  const AppButton({
    super.key,
    required this.label,
    required this.variants,
    required this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color foregroundColor;

    switch (variants) {
      case ButtonVariants.primary:
        backgroundColor = AppColors.primary;
        foregroundColor = AppColors.white;
      default:
        backgroundColor = AppColors.black;
        foregroundColor = AppColors.white;
    }

    Widget content = Padding(
      padding: AppPadSymmetric.hMD,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppGap.wMD,
          Expanded(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: AppTextStyles.lexenDecaSemiBold19px.copyWith(
                color: foregroundColor,
              ),
            ),
          ),

          SizedBox(
            height: 24,
            width: 24,
            child: Image.asset(AppIcons.arrowLeft, color: foregroundColor),
          ),
        ],
      ),
    );
    return SizedBox(
      height: 65,
      width: width ?? double.infinity,
      child: ClipPath(
        clipper: BarrelButtonClipper(),
        child: Material(
          color: backgroundColor,
          child: InkWell(onTap: onPressed, child: content),
        ),
      ),
    );
  }
}
