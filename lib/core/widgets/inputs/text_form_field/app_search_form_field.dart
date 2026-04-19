import 'package:flutter/material.dart';

class AppSearchFormField extends StatelessWidget {
  final void Function(String?)? onSaved;
  final String hint;

  const AppSearchFormField({super.key, this.onSaved, this.hint = "Search..."});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)), // Pill shape
      ),
    );
  }
}