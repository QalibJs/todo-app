import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppBoxDecoration {
  AppBoxDecoration._();

  static BoxDecoration get gradientBox => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Appcolors.blue,
            Appcolors.purple,
            Appcolors.red,
          ],
        ),
      );
  static BoxDecoration imgDec(String asset) => BoxDecoration(
        image: DecorationImage(
          image: AssetImage(asset),
        ),
      );

  static BoxDecoration get ppDec => BoxDecoration(
        color: Appcolors.white,
        borderRadius: BorderRadius.circular(50),
      );

  static BoxDecoration get addButton => BoxDecoration(
        border: Border.all(color: Appcolors.white),
        borderRadius: BorderRadius.circular(50),
      );
  static BoxDecoration get noteBoxes => BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Appcolors.blue,
            Appcolors.purple,
            Appcolors.red,
          ],
        ),
      );
}
