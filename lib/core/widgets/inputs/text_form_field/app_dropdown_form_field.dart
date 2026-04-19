import 'package:flutter/material.dart';

class AppDropdownFormField<T> extends StatelessWidget {
  final String label;
  final List<T> items;
  final T? value;
  final String Function(T) itemLabel;
  final void Function(T?) onChanged;
  final String? Function(T?)? validator;

  const AppDropdownFormField({
    super.key,
    required this.label,
    required this.items,
    required this.itemLabel,
    required this.onChanged,
    this.value,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      items: items.map((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(itemLabel(item)),
        );
      }).toList(),
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}