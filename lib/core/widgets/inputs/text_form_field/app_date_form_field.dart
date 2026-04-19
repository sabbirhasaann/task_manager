import 'package:flutter/material.dart';

class AppDateFormField extends FormField<DateTime> {
  AppDateFormField({
    super.key,
    required String label,
    required BuildContext context,
    super.onSaved,
    super.validator,
    DateTime? initialValue,
  }) : super(
          initialValue: initialValue,
          builder: (FormFieldState<DateTime> state) {
            return InkWell(
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: state.value ?? DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                );
                if (date != null) state.didChange(date);
              },
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: label,
                  errorText: state.errorText,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  suffixIcon: const Icon(Icons.calendar_today),
                ),
                child: Text(state.value == null 
                  ? 'Select Date' 
                  : "${state.value!.toLocal()}".split(' ')[0]),
              ),
            );
          },
        );
}