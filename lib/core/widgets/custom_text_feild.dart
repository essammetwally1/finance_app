import 'package:finance_app/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFeild extends StatelessWidget {
  final String? title;
  final bool? isPassword;
  final IconButton? icon;
  const CustomTextFeild({
    super.key,
    this.title,
    this.isPassword = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      width: 331.w,

      child: TextField(
        obscuringCharacter: '*',
        obscureText: isPassword ?? false,
        style: TextStyle(color: AppColor.black, fontSize: 18),
        cursorColor: AppColor.primary,
        decoration: InputDecoration(
          hintText: title ?? '',
          hintStyle: TextStyle(
            color: Color(0xFF8391A1),
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
          filled: true,
          fillColor: Color(0xFFF7F8F9),
          contentPadding: EdgeInsets.all(18),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xFFE8ECF4)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColor.primary),
          ),
          suffixIcon: icon,
        ),
      ),
    );
  }
}
