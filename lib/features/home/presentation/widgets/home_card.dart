import 'package:flutter/material.dart';

/*constants */
import 'package:task_manager/core/constants/app_colors.dart';
import 'package:task_manager/core/constants/app_icons.dart';
import 'package:task_manager/core/constants/app_text_styles.dart';

/*widgets */
import 'package:task_manager/core/widgets/buttons/app_button.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(
        22,
      ),
      height: 146,
      width: screenSize.width * (331 / 375),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(24),
        color: AppColors.primary,
        boxShadow: const [
          BoxShadow(
            blurRadius: 20,
            color: Color(0x07000008),
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your today's task\nalmost done!",
                      style: AppTextStyles.lexenDecaRegular14px.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    AppButton(
                      label: 'View Task',
                      appTextStyle: AppTextStyles.lexenDecaSemiBold14px
                          .copyWith(
                            color: AppColors.primary,
                          ),
                      variants: ButtonVariants.secondary,
                      onPressed: () {},
                      width: screenSize.width * (111 / 375),
                      height: 40,
                      bgColor: AppColors.white,
                      frColor: AppColors.primary,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                width: 16,
              ),

              SizedBox(
                height: screenSize.width * (76 / 146),
                width: screenSize.width * (76 / 375),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: screenSize.width * (76 / 375),
                      width: screenSize.width * (76 / 375),
                      child: const CircularProgressIndicator(
                        value: 0.85,
                        backgroundColor: Color(
                          0x33FFFFFF,
                        ),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.white,
                        ),
                        strokeWidth: 6,
                      ),
                    ),
                    Text(
                      '85%',
                      style: AppTextStyles.lexenDecaSemiBold14px.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: screenSize.width * (66 / 375),
              ),
            ],
          ),

          Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
              height: 24,
              width: 24,
              child: Image.asset(
                AppIcons.moreIcon,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
