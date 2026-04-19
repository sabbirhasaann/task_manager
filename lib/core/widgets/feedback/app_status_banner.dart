import 'package:flutter/material.dart';
class AppStatusBanner extends StatelessWidget {
  final String message;
  final Color backgroundColor;
  final IconData icon;

  const AppStatusBanner({
    super.key,
    required this.message,
    this.backgroundColor = Colors.orange,
    this.icon = Icons.wifi_off,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        color: backgroundColor,
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 20),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}