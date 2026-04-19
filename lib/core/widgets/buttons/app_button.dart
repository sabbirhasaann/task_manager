import 'package:flutter/material.dart';

enum ButtonVariant { 
  primary, 
  secondary, 
  tertiary, 
  destructive, 
  ghost, 
}

class AppButton extends StatelessWidget {
  final String? label;
  final VoidCallback? onPressed;
  final ButtonVariant variant;
  final bool isLoading;
  final bool isDisabled;
  final IconData? icon;
  final bool iconRight;
  final double? width;
  final double? borderRadius;

  const AppButton({
    super.key,
    this.label,
    required this.onPressed,
    this.variant = ButtonVariant.primary,
    this.isLoading = false,
    this.isDisabled = false,
    this.icon,
    this.iconRight = false,
    this.width,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    final colors = theme.colorScheme;
    final text = theme.textTheme;

    // 1. Resolve Colors based on Variant
    Color backgroundColor;
    Color foregroundColor;
    BorderSide border = BorderSide.none;

    switch (variant) {
      case ButtonVariant.secondary:
        backgroundColor = Colors.transparent;
        foregroundColor = theme.primaryColor;
        border = BorderSide(color: theme.primaryColor, width: 1.5);
        break;
      case ButtonVariant.tertiary:
        backgroundColor = theme.colorScheme.surfaceVariant;
        foregroundColor = theme.colorScheme.onSurfaceVariant;
        break;
      case ButtonVariant.destructive:
        backgroundColor = theme.colorScheme.error;
        foregroundColor = theme.colorScheme.onError;
        break;
      case ButtonVariant.ghost:
        backgroundColor = Colors.transparent;
        foregroundColor = theme.primaryColor;
        break;
      case ButtonVariant.primary:
        backgroundColor = theme.primaryColor;
        foregroundColor = theme.colorScheme.onPrimary;
        break;
      // default:

    }

    // 2. Handle Content (Icon + Text)
    Widget content = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null && !iconRight) ...[
          Icon(icon, size: 18),
          const SizedBox(width: 8),
        ],
        if (label != null)
          Text(
            label!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        if (icon != null && iconRight) ...[
          const SizedBox(width: 8),
          Icon(icon, size: 18),
        ],
      ],
    );

    // 3. Handle Loading State
    if (isLoading) {
      content = SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: foregroundColor,
        ),
      );
    }

    // 4. Final Button Assembly
    return SizedBox(
      width: width,
      height: 50, // Industry standard height
      child: ElevatedButton(
        onPressed: (isLoading || isDisabled) ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          elevation: variant == ButtonVariant.primary ? 2 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
            side: border,
          ),
          disabledBackgroundColor: theme.disabledColor.withAlpha(16),
          disabledForegroundColor: theme.disabledColor,
        ),
        child: content,
      ),
    );
  }
}