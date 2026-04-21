import 'package:flutter/material.dart';
import 'app_routes.dart';
import '../../../l10n/app_localizations.dart';
// Import your screens here

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initial:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(child: Text('Route not found')),
      );
    });
  }
}


class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Home View'),
            Text(
              l10n.helloWorld,
            ),
          ],
        ),
      ),
    );
  }
}

