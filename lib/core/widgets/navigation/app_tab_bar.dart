import 'package:flutter/material.dart';

class AppTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> tabs;
  final TabController? controller;

  const AppTabBar({super.key, required this.tabs, this.controller});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      isScrollable: tabs.length > 3,
      indicatorSize: TabBarIndicatorSize.label,
      tabs: tabs.map((t) => Tab(text: t)).toList(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}