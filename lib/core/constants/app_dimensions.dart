import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimensions {
  // Small spacing values
  static double get smallSpace => 8.w; // Width-based scaling
  static double get mediumSpace => 16.w;
  static double get largeSpace => 24.w;

  // Heights for common vertical spacing
  static double get smallHeight => 8.h; // Height-based scaling
  static double get mediumHeight => 16.h;
  static double get largeHeight => 24.h;
  static double get extraLargeHeight => 60.h;

  // Widths for common horizontal spacing
  static double get smallWidth => 8.w;
  static double get mediumWidth => 16.w;
  static double get largeWidth => 24.w;

  // Custom values for specific use cases
  static double get buttonHeight => 48.h;
  static double get iconSize => 24.w;
  static double get appBarHeight => 56.h;

// The base design size used for scaling the app's UI to different screen sizes.
// This represents the dimensions of the original design: 390px width and 844px height.
  static const Size designSize = Size(390, 844);
}
