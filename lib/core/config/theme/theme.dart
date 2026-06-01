import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';

ThemeData get lightTheme => ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    error: AppColors.error,
    surface: AppColors.grey100,
    onPrimary: AppColors.white,
    onSecondary: AppColors.black,
    onError: AppColors.white,
    onSurface: AppColors.black,
  ),

  textTheme: TextTheme(
    displayLarge: AppTextStyles.displayLarge as TextStyle?,
    displayMedium: AppTextStyles.displayMedium as TextStyle?,
    titleLarge: AppTextStyles.titleLarge as TextStyle?,
    titleMedium: AppTextStyles.titleMedium as TextStyle?,
    bodyLarge: AppTextStyles.bodyLarge as TextStyle?,
    bodyMedium: AppTextStyles.bodyMedium as TextStyle?,
    bodySmall: AppTextStyles.bodySmall as TextStyle?,
    labelMedium: AppTextStyles.labelMedium as TextStyle?,
  ),

);



ThemeData get darkTheme => ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    error: AppColors.error,
    surface: AppColors.black,
    onPrimary: AppColors.white,
    onSecondary: AppColors.black,
    onError: AppColors.white,
    onSurface: AppColors.white,
  ),
);

// Theme.of(context).colorScheme.primary
// Theme.of(context).textTheme.bodyLarge
// padding: EdgeInsets.all(AppSpacing.md)