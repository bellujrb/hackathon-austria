import 'dart:ui';

class AppColors {
  AppColors._();
  static AppColors? _instance;

  static AppColors get instance {
    _instance ??= AppColors._();
    return _instance!;
  }

  static Color get primary => const Color(0xFF2864AE);
  static Color get primaryBlack => const Color(0xFF000000);
}