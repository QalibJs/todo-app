import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:todo/constant/app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle get headerText => TextStyle(
      fontSize: 18.5.sp, fontWeight: FontWeight.bold, color: Appcolors.white);
  static TextStyle get homeNotes => TextStyle(
        fontSize: 8.5.sp,
        fontWeight: FontWeight.bold,
        color: Appcolors.white,
      );
  static TextStyle get headerNotes => TextStyle(
        fontSize: 14.5.sp,
        fontWeight: FontWeight.bold,
        color: Appcolors.white,
      );
}
