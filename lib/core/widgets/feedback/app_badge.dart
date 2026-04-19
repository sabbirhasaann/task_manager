import 'package:flutter/material.dart';

enum BadgeSize { small, large }

class AppBadge extends StatelessWidget {
  final Widget child;
  final String? label;
  final bool isVisible;
  final Color? backgroundColor;
  final BadgeSize size;

  const AppBadge({
    super.key,
    required this.child,
    this.label,
    this.isVisible = true,
    this.backgroundColor,
    this.size = BadgeSize.large,
  });

  @override
  Widget build(BuildContext context) {
    if (!isVisible) return child;

    final theme = Theme.of(context);

    // Small badge is a simple dot (e.g., "new update available")
    if (size == BadgeSize.small || label == null) {
      return Badge(
        backgroundColor: backgroundColor ?? theme.colorScheme.error,
        smallSize: 8,
        child: child,
      );
    }

    // Large badge shows text/numbers (e.g., "5 unread messages")
    return Badge(
      label: Text(
        label!,
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      backgroundColor: backgroundColor ?? theme.colorScheme.error,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      largeSize: 18,
      child: child,
    );
  }
}


/* usages of badge 

BottomNavigationBarItem(
  icon: AppBadge(
    label: '3',
    child: Icon(Icons.notifications_outlined),
  ),
  label: 'Notifications',
)

*/
