import 'package:flutter/material.dart';

/*constants */
import 'package:task_manager/core/constants/app_icons.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: CircleAvatar(
        child: SizedBox(
          height: 46,
          width: 46,
          child: Image.asset(
            AppIcons.profilePic,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
