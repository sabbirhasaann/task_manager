import 'package:flutter/material.dart';
import 'package:task_manager/core/constants/app_spacing.dart';
import 'package:task_manager/core/constants/app_colors.dart';
import 'package:task_manager/core/constants/app_icons.dart';
import 'package:task_manager/core/constants/app_text_styles.dart';
import 'package:task_manager/core/services/navigation_service.dart';
import 'package:task_manager/core/widgets/buttons/app_button.dart';
import 'package:task_manager/features/onboarding/presentation/widgets/onboarding_background_painter.dart';

/* Custom painter*/
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              size: size,
              painter: OnboardingBackgroundPainter(),
            ),
          ),

          Positioned(
            left: 0.8 * size.width / 2,
            top: 131,
            child: SizedBox(
              height: 184,
              width: 159,
              child: Image.asset(AppIcons.femaleCoffeeCup),
            ),
          ),
          Positioned(
            left: 104,
            top: 69,
            child: SizedBox(
              height: 50,
              width: 40,
              child: Image.asset(AppIcons.stopwatch),
            ),
          ),

          Positioned(
            left: 84,
            top: 180,
            child: SizedBox(
              height: 26,
              width: 26,
              child: Image.asset(AppIcons.piechart),
            ),
          ),

          Positioned(
            right: 60,
            top: 136,
            child: SizedBox(
              height: 27,
              width: 32,
              child: Image.asset(AppIcons.calendar1),
            ),
          ),

          Positioned(
            right: 100,
            top: 255,
            child: SizedBox(
              height: 62,
              width: 42,
              child: Image.asset(AppIcons.notification1),
            ),
          ),
          Positioned(
            left: 79,
            top: 279,
            child: SizedBox(
              height: 52,
              width: 36,
              child: Image.asset(AppIcons.vase),
            ),
          ),

          Positioned(
            left: 67,
            top: 310,
            child: SizedBox(
              height: 22,
              width: 18,
              child: Image.asset(AppIcons.pinkCup),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Task Management & To-Do List',
                style: AppTextStyles.lexenDecaSemiBold24px,
              ),
              const SizedBox(height: 20),
              Text(
                'This productive tool is designed to help you better manage your task  project-wise conveniently!',
                textAlign: TextAlign.center,
                style: AppTextStyles.lexenDecaRegular14px,
              ),
              const SizedBox(height: 40),
              AppButton(
                label: 'Let\'s Start',
                variants: ButtonVariants.primary,
                onPressed: () {
                  NavigationService.instance.navigateToRoute('homeView/');
                },

                width: 300,
              ),

              AppGap.hJumbo,
              AppGap.hXXL,
            ],
          ),
        ],
      ),
    );
  }
}
