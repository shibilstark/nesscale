import 'package:flutter/cupertino.dart';

class AppDimensions {
  static const kCommonPadding = EdgeInsets.all(25);
  static const kCommonHorizontalPadding = EdgeInsets.symmetric(horizontal: 25);
  static const kBottomNavPadding =
      EdgeInsets.only(bottom: 25, left: 15, right: 15);
  static const kAppBarHeight = Size.fromHeight(60);
  static const kNavBarHeight = Size.fromHeight(60);
}

class AppFontWeight {
  static const kThin = FontWeight.w300;
  static const kRegular = FontWeight.w400;
  static const kMedium = FontWeight.w500;
  static const kSemiBold = FontWeight.w600;
  static const kBold = FontWeight.w700;
}
