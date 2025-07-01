import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: AppFonts.mainFontName,

    textTheme: TextTheme(
      titleLarge: AppStyles.blueTextStyle,
      titleMedium: AppStyles.blackTextStyle,
    ),
  );
}
