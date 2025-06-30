import 'package:finance_app/core/styling/app_color.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle blueTextStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 30.sp,
    color: AppColor.primary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle grayTextStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16.sp,
    color: AppColor.gray,
    fontWeight: FontWeight.w500,
  );
  static TextStyle blackTextStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16.sp,
    color: AppColor.black,
    fontWeight: FontWeight.w600,
  );
  static TextStyle subGrayTextStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 12.sp,
    color: AppColor.subGray,
    fontWeight: FontWeight.w500,
  );
}
