import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

// light mode
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: AppColors.white,
    primary: AppColors.black,
  ),

  // inputDecorationTheme: InputDecorationTheme(
    // border: OutlineInputBorder(
    //   borderSide: BorderSide(color: AppColors.white, width: 3),
    // ),
    // enabledBorder: OutlineInputBorder(
    //   borderSide: BorderSide(color: AppColors.white, width: 3),
    // ),
    // focusedBorder: OutlineInputBorder(
    //   borderSide: BorderSide(color: AppColors.white, width: 3),
    // ),
    // errorBorder: OutlineInputBorder(
    //   borderSide: BorderSide(color: AppColors.red, width: 3),
    // ),
  // ),
);

//dark mode
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: AppColors.black,
    primary: AppColors.white,
  ),
  // inputDecorationTheme: InputDecorationTheme(
    // border: OutlineInputBorder(
    //   borderSide: BorderSide(color: AppColors.white, width: 3),
    // ),
    // enabledBorder: OutlineInputBorder(
    //   borderSide: BorderSide(color: AppColors.white, width: 3),
    // ),
    // focusedBorder: OutlineInputBorder(
    //   borderSide: BorderSide(color: AppColors.white, width: 3),
    // ),
    // errorBorder: OutlineInputBorder(
    //   borderSide: BorderSide(color: AppColors.red, width: 3),
    // ),
  // ),
);
