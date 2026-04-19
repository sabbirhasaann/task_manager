import 'package:flutter/material.dart';

enum SnackBarType { success, error, warning, info }

class AppFeedback {
  static void showSnackBar(BuildContext context, {
    required String message,
    required SnackBarType type,
  }) {
    final colors = {
      SnackBarType.success: Colors.green.shade700,
      SnackBarType.error: Colors.red.shade700,
      SnackBarType.warning: Colors.orange.shade800,
      SnackBarType.info: Colors.blue.shade700,
    };

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: const TextStyle(color: Colors.white)),
        backgroundColor: colors[type],
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(16),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}