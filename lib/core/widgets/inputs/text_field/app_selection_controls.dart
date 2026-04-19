import 'package:flutter/material.dart';

class AppSelectionControl extends StatelessWidget {
  final String label;
  final bool value;
  final Function(bool?) onChanged;
  final bool isSwitch;

  const AppSelectionControl({
    super.key, 
    required this.label, 
    required this.value, 
    required this.onChanged,
    this.isSwitch = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        isSwitch 
          ? Switch.adaptive(value: value, onChanged: onChanged)
          : Checkbox(value: value, onChanged: onChanged),
      ],
    );
  }
}