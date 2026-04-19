import 'package:flutter/material.dart';

class AppAlertDialog extends StatelessWidget {
  final String title;
  final String description;
  final String confirmLabel;
  final VoidCallback onConfirm;
  final bool isDestructive;

  const AppAlertDialog({
    super.key,
    required this.title,
    required this.description,
    required this.onConfirm,
    this.confirmLabel = "Confirm",
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(description),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancel")),
        FilledButton(
          onPressed: onConfirm,
          style: isDestructive ? FilledButton.styleFrom(backgroundColor: Colors.red) : null,
          child: Text(confirmLabel),
        ),
      ],
    );
  }
}