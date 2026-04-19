import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<NavigationDestination> destinations;

  const AppBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.destinations,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      destinations: destinations,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      height: 70,
    );
  }
}


/*  // Implementation logic
bool isTablet = MediaQuery.of(context).size.width > 600;
return Scaffold(
  body: Row(
    children: [
      if (isTablet) NavigationRail(...),
      Expanded(child: MainContent()),
    ],
  ),
  bottomNavigationBar: isTablet ? null : AppBottomNavBar(...),
);
*/