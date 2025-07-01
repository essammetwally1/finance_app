import 'package:finance_app/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevetedButtonWidget extends StatelessWidget {
  final String? title;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  const ElevetedButtonWidget({
    super.key,
    this.title,
    this.backgroundColor,
    this.fontSize,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8.r),
        ),
        backgroundColor: backgroundColor ?? AppColor.primary,
        fixedSize: Size(335, 56),
      ),

      onPressed: () {},

      child: Text(
        title ?? '',
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: fontSize ?? 15,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
