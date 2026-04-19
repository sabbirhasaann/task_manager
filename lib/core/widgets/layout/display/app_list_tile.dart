import 'package:flutter/material.dart';


class AppListTile extends StatelessWidget {
  final Widget? leading;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool showDivider;

  const AppListTile({
    super.key,
    required this.title,
    this.leading,
    this.subtitle,
    this.trailing = const Icon(Icons.chevron_right, size: 20),
    this.onTap,
    this.showDivider = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: leading,
          title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
          subtitle: subtitle != null ? Text(subtitle!) : null,
          trailing: trailing,
          onTap: onTap,
        ),
        if (showDivider) const Divider(height: 1),
      ],
    );
  }
}