import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:todo/constant/app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle get headerText => TextStyle(
      fontSize: 18.5.sp, fontWeight: FontWeight.bold, color: AppColors.white);
  static TextStyle get homeNotes => TextStyle(
        fontSize: 8.5.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
      );
  static TextStyle get overFlowedHomeNotes => TextStyle(
      fontSize: 8.5.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.white,
      overflow: TextOverflow.ellipsis);
  static TextStyle get headerNotes => TextStyle(
        fontSize: 14.5.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
      );
  static TextStyle get overFlowedHeaderNotes => TextStyle(
        fontSize: 14.5.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
        overflow: TextOverflow.ellipsis,
      );
  static TextStyle get smallText => TextStyle(
        fontSize: 11.5.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      );
}
