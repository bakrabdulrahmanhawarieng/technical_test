import 'package:flutter/material.dart';
import 'package:technical_test/core/constants/app_colors.dart';
import 'package:technical_test/core/constants/app_styles.dart';

// Themes class
class AppTheme {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: TextTheme(
        bodyMedium: AppStyles.bodyMedium,
        bodyLarge: AppStyles.bodyLarge,
        bodySmall: AppStyles.bodySmall,
        headlineLarge: AppStyles.headlineLarge,
        headlineMedium: AppStyles.headlineMedium,
        titleLarge: AppStyles.titleLarge,
        titleMedium: AppStyles.titleMedium,
        titleSmall: AppStyles.titleSmall),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.darkColor,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkColor,
      foregroundColor: Colors.white,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: TextTheme(
      bodyMedium: AppStyles.bodyMedium.copyWith(color: Colors.white),
      bodyLarge: AppStyles.bodyLarge.copyWith(color: Colors.white),
      bodySmall: AppStyles.bodySmall.copyWith(color: Colors.white),
      headlineLarge: AppStyles.headlineLarge.copyWith(color: Colors.white),
      headlineMedium: AppStyles.headlineMedium.copyWith(color: Colors.white),
      titleLarge: AppStyles.titleLarge.copyWith(color: Colors.white),
      titleMedium: AppStyles.titleMedium.copyWith(color: Colors.white),
      titleSmall: AppStyles.titleSmall.copyWith(color: Colors.white),
    ),
  );
}
