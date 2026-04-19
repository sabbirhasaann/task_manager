import 'package:flutter/material.dart';

class AppCheckboxFormField extends FormField<bool> {
  AppCheckboxFormField({
    super.key,
    required String title,
    super.onSaved,
    super.validator,
    bool initialValue = false,
  }) : super(
          initialValue: initialValue,
          builder: (FormFieldState<bool> state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckboxListTile(
                  title: Text(title),
                  value: state.value,
                  onChanged: state.didChange,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                if (state.hasError)
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      state.errorText!,
                      style: const TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
              ],
            );
          },
        );
}