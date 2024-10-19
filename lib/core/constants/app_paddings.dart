import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppPaddings {
  // Small padding (e.g., for small gaps between widgets)
  static EdgeInsets get small =>
      EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h);

  // Medium padding (e.g., for general use in the app)
  static EdgeInsets get medium =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h);

  // Large padding (e.g., for larger gaps or section margins)
  static EdgeInsets get large =>
      EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h);

  // Large top padding (e.g., for top padding)
  static EdgeInsets get largeTopPadding => EdgeInsets.only(top: 30.h);

  // Medium top padding (e.g., for top padding)
  static EdgeInsets get mediumTopPadding => EdgeInsets.only(top: 14.h);

  // Small top padding (e.g., for top padding)
  static EdgeInsets get smallTopPadding => EdgeInsets.only(top: 8.h);

  // Custom horizontal and vertical paddings
  static EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: 16.w);
  static EdgeInsets get vertical => EdgeInsets.symmetric(vertical: 16.h);
}
