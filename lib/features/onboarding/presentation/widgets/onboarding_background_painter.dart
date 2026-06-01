import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_manager/features/theme/onboarding_colors.dart';
import 'package:task_manager/core/constants/app_colors.dart';

class OnboardingBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;

    const double blurSigma = 15.0;
    paint.imageFilter = ImageFilter.blur(
      sigmaX: blurSigma,
      sigmaY: blurSigma,
      tileMode: TileMode
          .decal, // Decal ensures the blur fades out naturally to transparent at the edges
    );

    // Define all your distinct circles and gradients in a list
    final circles = [
      CircleConfig(
        center: const Offset(-15, 126),
        radius: 35,
        gradient: OnboardingColors.greenLinear,
      ),
      CircleConfig(
        center: const Offset(263, 0),
        radius: 35,
        gradient: OnboardingColors.yellowGradient,
      ),
      CircleConfig(
        center: const Offset(76, 424),
        radius: 27,
        gradient: OnboardingColors.blueGradient,
      ),
      CircleConfig(
        center: const Offset(333, 232),
        radius: 30,
        gradient: OnboardingColors.violetGradient,
      ),
      CircleConfig(
        center: Offset(240, size.height - 15),
        radius: 27,
        gradient: OnboardingColors.yellowGradient,
      ),
    ];

    // Loop over the configs and paint them dynamically
    for (final circle in circles) {
      // Create a local bounding box matching the specific circle size & spot
      final rect = Rect.fromCircle(
        center: circle.center,
        radius: circle.radius,
      );

      // Update the paint's shader for this specific boundary
      paint.shader = circle.gradient.createShader(rect);

      canvas.drawCircle(circle.center, circle.radius, paint);
    }

    final paint1 = Paint()..color = AppColors.blue;
    canvas.drawCircle(Offset(202, 92), 2, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CircleConfig {
  final Offset center;
  final double radius;
  final LinearGradient gradient;

  const CircleConfig({
    required this.center,
    required this.radius,
    required this.gradient,
  });
}
