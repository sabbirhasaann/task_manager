import 'package:flutter/material.dart';

class AppGrid extends StatelessWidget {
  final List<Widget> children;
  final int crossAxisCount;
  final double spacing;

  const AppGrid({
    super.key,
    required this.children,
    this.crossAxisCount = 2,
    this.spacing = 16,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // Usually used inside a ListView
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: spacing,
      mainAxisSpacing: spacing,
      children: children,
    );
  }
}