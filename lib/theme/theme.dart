import 'package:flutter/material.dart';
import '../constant/app_colors.dart';

// light mode
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme:  ColorScheme.light(
    background: AppColors.white,
    primary: AppColors.black

  ),
);

//dark mode
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: AppColors.black,
    primary: AppColors.white
  ),
);
