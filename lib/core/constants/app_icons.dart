import 'package:flutter/foundation.dart' show kIsWeb;

class AppIcons {
  static const basePath =
      kIsWeb ? 'icons/task_management' : 'assets/icons/task_management';
  static const baseFeaturePath =
      kIsWeb ? 'task_management/features' : 'assets/task_management/features';
  static const String add = '$basePath/add.png';
  static const String arrowLeft = '$basePath/arrow_left.png';
  static const String arrowRight = '$basePath/arrow_right.png';
  static const String arrowDown = '$basePath/arrow_down_4.png';
  static const String book = '$basePath/book.png';
  static const String briefcase = '$basePath/briefcase.png';
  static const String calendar = '$basePath/calendar.png';
  static const String documentText = '$basePath/document_text.png';
  static const String home = '$basePath/home.png';
  static const String notification = '$basePath/notification.png';
  static const String profileUser = '$basePath/profile_user.png';
  static const String userOctagon = '$basePath/user_octagon.png';
  static const String onboardingSS =
      '$baseFeaturePath/onboarding/onboarding.png';
  static const String onboardingSS4x =
      '$baseFeaturePath/onboarding/onboarding4x.png';
  static const String femaleCoffeeCup =
      '$baseFeaturePath/onboarding/female_coffee_cup.png';
  static const String calendar1 = '$baseFeaturePath/onboarding/calendar.png';

  static const String notification1 =
      '$baseFeaturePath/onboarding/notifications.png';

  static const String piechart = '$baseFeaturePath/onboarding/piechart.png';
  static const String pinkCup = '$baseFeaturePath/onboarding/pink_cup.png';
  static const String stopwatch = '$baseFeaturePath/onboarding/stopwatch.png';
  static const String vase = '$baseFeaturePath/onboarding/vase.png';
}
