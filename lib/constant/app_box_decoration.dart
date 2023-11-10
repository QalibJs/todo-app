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
  static BoxDecoration get button => BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            AppColors.darkBlue,
            AppColors.purple,
          ],
        ),
      );

  static BoxDecoration  ppDec(context) => BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50),
      );

  static BoxDecoration  addButton(context) => BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.primary),
        borderRadius: BorderRadius.circular(50),
      );
  static BoxDecoration get noteBoxes => BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppColors.darkBlue,
            AppColors.purple,
            AppColors.red,
          ],
        ),
      );
}
