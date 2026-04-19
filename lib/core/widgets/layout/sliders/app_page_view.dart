import 'package:flutter/material.dart';

class AppPageView extends StatelessWidget {
  final List<Widget> pages;
  final PageController controller;
  final Function(int)? onPageChanged;

  const AppPageView({
    super.key,
    required this.pages,
    required this.controller,
    this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      onPageChanged: onPageChanged,
      itemCount: pages.length,
      itemBuilder: (context, index) => pages[index],
    );
  }
}