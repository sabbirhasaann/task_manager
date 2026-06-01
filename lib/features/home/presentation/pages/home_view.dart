import 'package:flutter/material.dart';

/*constants */
import 'package:task_manager/core/constants/app_colors.dart';
import 'package:task_manager/core/constants/app_icons.dart';
import 'package:task_manager/core/constants/app_text_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
        ],
      ),
    );
  }
}
