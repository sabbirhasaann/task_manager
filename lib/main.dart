import 'package:flutter/material.dart';
import 'core/config/theme/theme.dart' as apptheme;
import 'core/config/router/app_routes.dart';
import 'core/config/router/route_generator.dart';
import 'l10n/app_localizations.dart';
import 'core/services/navigation_service.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: apptheme.lightTheme,
      darkTheme: apptheme.darkTheme,
      themeMode: ThemeMode.system,
      
      // Route settings (standard file separation)
      initialRoute: AppRoutes.initial,
      onGenerateRoute: RouteGenerator.generateRoute,

      // Route settings (GoRouter Package)
      

      // app localization
      // locale: Locale(_languageCode),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // navigation service
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}
