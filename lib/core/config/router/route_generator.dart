import 'package:flutter/material.dart';
import 'app_routes.dart';

// Import your screens here
import 'package:task_manager/features/onboarding/presentation/pages/onboarding_view.dart';
import 'package:task_manager/features/main_wrapper/presentation/pages/main_wrapper_view.dart';
import 'package:task_manager/features/home/presentation/pages/home_view.dart';
import 'package:task_manager/features/task/presentation/pages/task_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initial:
        return MaterialPageRoute(builder: (_) => const OnboardingView());

      case AppRoutes.onboardingView:
        return MaterialPageRoute(
          builder: (ctx) {
            return const OnboardingView();
          },
        );
      case AppRoutes.mainWrapperView:
        return MaterialPageRoute(
          builder: (ctx) {
            return const MainWrapperView();
          },
        );
      case AppRoutes.homeView:
        return MaterialPageRoute(
          builder: (ctx) {
            return const HomeView();
          },
        );
      case AppRoutes.taskView:
        return MaterialPageRoute(
          builder: (ctx) {
            return const TaskView();
          },
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return const Scaffold(body: Center(child: Text('Route not found')));
      },
    );
  }
}
