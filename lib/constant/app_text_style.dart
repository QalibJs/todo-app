import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle headerText(context) => TextStyle(
        fontSize: 18.5.sp,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary,
      );

  static TextStyle homeNotes(context) => TextStyle(
        fontSize: 8.5.sp,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary,
      );
  static TextStyle overFlowedHomeNotes(context) => TextStyle(
        fontSize: 8.5.sp,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary,
        overflow: TextOverflow.ellipsis,
      );
  static TextStyle headerNotes(context) => TextStyle(
        fontSize: 14.5.sp,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary,
      );
  static TextStyle get buttonText => TextStyle(
        fontSize: 14.5.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
      );
  static TextStyle overFlowedHeaderNotes(context) => TextStyle(
        fontSize: 14.5.sp,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary,
        overflow: TextOverflow.ellipsis,
      );
  static TextStyle smallText(context) => TextStyle(
        fontSize: 11.5.sp,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).colorScheme.primary,
      );
}
