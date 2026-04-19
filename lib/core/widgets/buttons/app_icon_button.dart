import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final bool isCircle;

  const AppIconButton({
    super.key, 
    required this.icon, 
    this.onTap, 
    this.isCircle = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(isCircle ? 50 : 12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isCircle ? null : BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Icon(icon, size: 24),
      ),
    );
  }
}