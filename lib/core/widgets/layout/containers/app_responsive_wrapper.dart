import 'package:flutter/material.dart';

class AppResponsiveWrapper extends StatelessWidget {
  final Widget child;
  final double maxWidth;

  const AppResponsiveWrapper({
    super.key,
    required this.child,
    this.maxWidth = 600, // Standard max width for content on large screens
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}
