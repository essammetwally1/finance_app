import 'package:finance_app/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final String? title;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  const OutlinedButtonWidget({
    super.key,
    this.title,
    this.backgroundColor,
    this.fontSize,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: AppColor.primary, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8.r),
        ),
        // backgroundColor: backgroundColor ?? AppColor.primary,
        fixedSize: Size(331, 56),
      ),

      onPressed: () {},

      child: Text(
        title ?? '',
        style: TextStyle(
          color: textColor ?? AppColor.primary,
          fontSize: fontSize ?? 15,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
