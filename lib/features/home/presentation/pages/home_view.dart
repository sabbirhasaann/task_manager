import 'package:flutter/material.dart';

/*constants */
import 'package:task_manager/core/constants/app_colors.dart';
import 'package:task_manager/core/constants/app_icons.dart';
import 'package:task_manager/core/constants/app_text_styles.dart';
import 'package:task_manager/core/widgets/buttons/app_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 22,
              right: 22,
              top: 27,
              bottom: 24,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  child: SizedBox(
                    height: 46,
                    width: 46,
                    child: Image.asset(
                      AppIcons.profilePic,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 36,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello!',
                      style: AppTextStyles.lexenDecaRegular14px,
                    ),
                    Text(
                      'Livia Vaccaro',
                      style: AppTextStyles.lexenDecaSemiBold19px,
                    ),
                  ],
                ),
                const Spacer(),
                Stack(
                  children: [
                    Positioned(
                      right: 0,
                      top: 0,
                      child: CircleAvatar(
                        radius: 5,
                      ),
                    ),
                    Image.asset(
                      AppIcons.notification,
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(
              22,
            ), // Uniform padding makes alignment predictable
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
          ),
        ],
      ),
    );
  }
}
