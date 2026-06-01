import 'package:flutter/material.dart';
import 'core/config/theme/theme.dart' as apptheme;
import 'core/config/router/app_routes.dart';
import 'core/config/router/route_generator.dart';
import 'l10n/app_localizations.dart';
import 'core/services/navigation_service.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/services/splash_service.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  SplashService.init(widgetsBinding);
  await Future.delayed(const Duration(seconds: 3));

  // if(kIsWeb){
  //   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  //   await initializationTasks();
  // }

  runApp(const MyApp());

  SplashService.remove();
}

Future<void> initializationTasks() async {
  await Future.delayed(Duration(seconds: 3));
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'task_manager',
      theme: apptheme.lightTheme,
      darkTheme: apptheme.darkTheme,
      themeMode: ThemeMode.system,

      // Route settings (standard file separation)
      initialRoute: AppRoutes.initial,
      onGenerateRoute: RouteGenerator.generateRoute,

      // Route settings (GoRouter Package)

      // app localization
      // locale: Locale(_languageCode),
      locale: Locale('bn'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // navigation service
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}
