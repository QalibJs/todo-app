import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppBoxDecoration {
  AppBoxDecoration._();

  static BoxDecoration get gradientBox => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppColors.blue,
            AppColors.purple,
            AppColors.red,
          ],
        ),
      );
  static BoxDecoration imgDec(String asset) => BoxDecoration(
        image: DecorationImage(
          image: AssetImage(asset),
        ),
      );

  static BoxDecoration get ppDec => BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(50),
      );

  static BoxDecoration get addButton => BoxDecoration(
        border: Border.all(color: AppColors.white),
        borderRadius: BorderRadius.circular(50),
      );
  static BoxDecoration get noteBoxes => BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppColors.blue,
            AppColors.purple,
            AppColors.red,
          ],
        ),
      );
}
