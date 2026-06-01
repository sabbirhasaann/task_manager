import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {

  static final displayLarge  = GoogleFonts.lato(
                                fontSize: 32, 
                                fontWeight: FontWeight.w700, 
                                height: 1.2
                              );
  static final displayMedium = GoogleFonts.lato(
                                fontSize: 26, 
                                fontWeight: FontWeight.w700, 
                                height: 1.2
                              );
  static final titleLarge    = GoogleFonts.lato(
                                fontSize: 20, 
                                fontWeight: FontWeight.w600, 
                                height: 1.3
                              );
  static final titleMedium   = GoogleFonts.lato(
                                fontSize: 16, 
                                fontWeight: FontWeight.w600, 
                                height: 1.4
                              );
  static final bodyLarge     = GoogleFonts.lato(
                                fontSize: 16, 
                                fontWeight: FontWeight.w400, 
                                height: 1.5
                              );
  static final bodyMedium    = GoogleFonts.lato(
                                fontSize: 14, 
                                fontWeight: FontWeight.w400, 
                                height: 1.5
                              );
  static final bodySmall     = GoogleFonts.lato(
                                fontSize: 12, 
                                fontWeight: FontWeight.w400, 
                                height: 1.5
                              );
  static final labelMedium   = GoogleFonts.lato(
                                fontSize: 12, 
                                fontWeight: FontWeight.w500, 
                                height: 1.4, 
                                letterSpacing: 0.5,
                              );
}