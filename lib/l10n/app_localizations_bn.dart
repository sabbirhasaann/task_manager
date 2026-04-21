// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get helloWorld => 'হ্যালো ওয়ার্ল্ড!';

  @override
  String welcomeMsg(Object name) {
    return 'স্বাগতম, $name';
  }
}
