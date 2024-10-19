import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xff1B3E6E);
  static const secondaryColor = Color(0xff0FC0E0);
  static const lightGreyColor = Color(0xffFAFAFA);
  static const darkColor = Color(0xFF1F1B24);

  static const appMainGradient = const LinearGradient(
    colors: [AppColors.primaryColor, AppColors.secondaryColor],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
