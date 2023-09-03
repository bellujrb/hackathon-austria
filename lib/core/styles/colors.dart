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
  static Color get primaryBlue => const Color(0xFF007AFF);
  static Color get primaryRed => const Color(0xFFFF3D3D);
  static Color get primaryGreen => const Color(0xFF249229);
  static Color get secondaryGray => const Color(0x1E767680).withOpacity(0.12);
}