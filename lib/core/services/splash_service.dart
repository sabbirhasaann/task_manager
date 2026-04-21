import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/material.dart';

class SplashService {
  static void init(WidgetsBinding widgetsBinding) {
    if (kIsWeb) return;
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  }

  static void remove() {
    if (kIsWeb) return;
    FlutterNativeSplash.remove();
  }
}