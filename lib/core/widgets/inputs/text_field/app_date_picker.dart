import 'package:flutter/material.dart';
import 'app_text_field.dart';

class AppDatePicker extends StatelessWidget {
  final String label;
  final DateTime? selectedDate;
  final VoidCallback onTap;

  const AppDatePicker({super.key, required this.label, this.selectedDate, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: IgnorePointer(
        child: AppTextField(
          label: label,
          hint: selectedDate == null ? "Select Date" : "${selectedDate!.toLocal()}".split(' ')[0],
          prefixIcon: Icons.calendar_today,
          isEnabled: true, // Styled as enabled but click is intercepted
        ),
      ),
    );
  }
}