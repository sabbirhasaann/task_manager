import 'package:flutter/material.dart';

abstract class AppSpacing {
  static const double xs  = 4;
  static const double sm  = 8;
  static const double md  = 16;
  static const double lg  = 24;
  static const double xl  = 32;
  static const double xlarge = 40; 
  static const double xxl = 48;
  static const double xxxl = 56;
  static const double jumbo = 64;
}

abstract class AppRadius {
  static const double sm   = 8;
  static const double md   = 12;
  static const double lg   = 16;
  static const double xl   = 24;
  static const double full = 999;
}


abstract class AppGap {
  // Vertical
  static const hXS = SizedBox(height: AppSpacing.xs);
  static const hSM = SizedBox(height: AppSpacing.sm);
  static const hMD = SizedBox(height: AppSpacing.md);
  static const hLG = SizedBox(height: AppSpacing.lg);
  static const hXL = SizedBox(height: AppSpacing.xl);
  static const hXLarge = SizedBox(height: AppSpacing.xlarge);
  static const hXXL = SizedBox(height: AppSpacing.xxl);
  static const hJumbo = SizedBox(height: AppSpacing.jumbo);

  // Horizontal
  static const wXS = SizedBox(width: AppSpacing.xs);
  static const wSM = SizedBox(width: AppSpacing.sm);
  static const wMD = SizedBox(width: AppSpacing.md);
  static const wLG = SizedBox(width: AppSpacing.lg);
  static const wXL = SizedBox(width: AppSpacing.xl);
  static const wXLarge = SizedBox(width: AppSpacing.xlarge);
  static const wXXL = SizedBox(width: AppSpacing.xxl);
  static const wJumbo = SizedBox(width: AppSpacing.jumbo);

}