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
  final TextStyle? appTextStyle;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final String? leftIcon;
  final String? rightIcon;
  final Color? bgColor, frColor;
  const AppButton({
    super.key,
    required this.label,
    required this.variants,
    required this.onPressed,
    this.width,
    this.height,
    this.leftIcon,
    this.rightIcon,
    this.appTextStyle,
    this.bgColor,
    this.frColor,
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
        backgroundColor = bgColor ?? AppColors.black;
        foregroundColor = frColor ?? AppColors.white;
    }

    Widget content = Padding(
      padding: AppPadSymmetric.hMD,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // AppGap.wMD,
          Expanded(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style:
                  appTextStyle ??
                  AppTextStyles.lexenDecaSemiBold19px.copyWith(
                    color: foregroundColor,
                  ),
            ),
          ),

          if (rightIcon != null)
            SizedBox(
              height: 24,
              width: 24,
              child: Image.asset(
                AppIcons.arrowLeft,
                color: foregroundColor,
              ),
            ),
        ],
      ),
    );
    return SizedBox(
      height: height ?? 65,
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
