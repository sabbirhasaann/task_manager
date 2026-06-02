import 'package:flutter/material.dart';

/*constants */
import 'package:task_manager/core/constants/app_icons.dart';
import 'package:task_manager/core/constants/app_text_styles.dart';

class AppAppBar extends StatelessWidget {
  final bool isHome;
  final String? title;
  const AppAppBar({
    super.key,
    this.isHome = false,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 22,
        right: 22,
        top: 27,
      ),
      child: Row(
        children: [
          isHome
              ? CircleAvatar(
                  child: SizedBox(
                    height: 46,
                    width: 46,
                    child: Image.asset(
                      AppIcons.profilePic,
                    ),
                  ),
                )
              : SizedBox(
                  child: Image.asset(
                    AppIcons.arrowRight,
                  ),
                ),
          if (isHome)
            const SizedBox(
              width: 36,
            ),
          if (isHome)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello!',
                  style: AppTextStyles.lexenDecaRegular14px,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Livia Vaccaro',
                  style: AppTextStyles.lexenDecaSemiBold19px,
                ),
              ],
            ),
          if (!isHome)
            Expanded(
              child: Text(
                title ?? 'No title',
                textAlign: TextAlign.center,
                style: AppTextStyles.lexenDecaBold19px.copyWith(),
              ),
            ),
          if (isHome) const Spacer(),
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
    );
  }
}
