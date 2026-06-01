import 'package:flutter/material.dart';

class OnboardingColors {
  static const LinearGradient greenLinear = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF46F080),
      Color(0x2646F08A),
    ],
    stops: [0.1, 1.0],
  );

  static const LinearGradient yellowGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFFEDF046),
      Color(0x26F0E946),
    ],
    stops: [0.1, 1.0],
  );

  static const LinearGradient blueGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF46BDF0),
      Color(0x2646B3F0),
    ],
    stops: [0.1, 1.0],
  );

  static const LinearGradient violetGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF2555FF),
      Color(0x402555FF),
    ],
    stops: [0.1, 1.0],
  );
}
