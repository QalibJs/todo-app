import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../constant/app_colors.dart';
import '../../../constant/app_text.dart';

class RegisterTopText extends StatelessWidget {
  const RegisterTopText({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientText(
      AppTexts.appName,
      style: GoogleFonts.arsenal(
        fontSize: 26,
      ),
      colors: [
        AppColors.darkBlue,
        AppColors.purple,
        AppColors.red,
      ],
    );
  }
}
