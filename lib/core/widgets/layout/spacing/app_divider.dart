import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final bool isVertical;
  final double thickness;

  const AppDivider({super.key, this.isVertical = false, this.thickness = 1.0});

  @override
  Widget build(BuildContext context) {
    return isVertical
        ? VerticalDivider(width: thickness, thickness: thickness, color: Colors.grey.shade200)
        : Divider(height: thickness, thickness: thickness, color: Colors.grey.shade200);
  }
}