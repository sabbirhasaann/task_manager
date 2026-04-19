import 'package:flutter/material.dart';
import 'core/config/theme/theme.dart' as apptheme;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: apptheme.lightTheme,
      darkTheme: apptheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        body: Center(
            child: Text(
              'My Homepage!',
            )
        )
      )
    );
  }
}
