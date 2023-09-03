import 'package:flutter/material.dart';
import 'package:hackathon_austria/core/styles/colors.dart';

  class AppTextStyles {
    AppTextStyles._();

    static AppTextStyles? _instance;

    static AppTextStyles get instance {
      _instance ??= AppTextStyles._();
      return _instance!;
    }

    TextStyle get smallBlack => TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 11.15,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.28,
    );

    TextStyle get mediumBlack => TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 23.10,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.28,
    );

    TextStyle get temporaryText => const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400
    );

    TextStyle get mediumRed => TextStyle(
      color: AppColors.primaryRed,
      fontSize: 24.0,
      fontWeight: FontWeight.w700
    );

    TextStyle get smallWhite => const TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.w600
    );
  }

  extension AppTextStylesExtension on BuildContext {
    AppTextStyles get appTextStyles => AppTextStyles.instance;
  }