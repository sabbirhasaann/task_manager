import 'dart:ui';

abstract class AppTextStyles {
  static const _baseFont = 'YourFontFamily';

  static final displayLarge  = TextStyle(fontFamily: _baseFont, fontSize: 32, fontWeight: FontWeight.w700, height: 1.2);
  static final displayMedium = TextStyle(fontFamily: _baseFont, fontSize: 26, fontWeight: FontWeight.w700, height: 1.2);
  static final titleLarge    = TextStyle(fontFamily: _baseFont, fontSize: 20, fontWeight: FontWeight.w600, height: 1.3);
  static final titleMedium   = TextStyle(fontFamily: _baseFont, fontSize: 16, fontWeight: FontWeight.w600, height: 1.4);
  static final bodyLarge     = TextStyle(fontFamily: _baseFont, fontSize: 16, fontWeight: FontWeight.w400, height: 1.5);
  static final bodyMedium    = TextStyle(fontFamily: _baseFont, fontSize: 14, fontWeight: FontWeight.w400, height: 1.5);
  static final bodySmall     = TextStyle(fontFamily: _baseFont, fontSize: 12, fontWeight: FontWeight.w400, height: 1.5);
  static final labelMedium   = TextStyle(fontFamily: _baseFont, fontSize: 12, fontWeight: FontWeight.w500, height: 1.4, letterSpacing: 0.5,);
}