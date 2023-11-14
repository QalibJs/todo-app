import 'package:flutter/material.dart';
import 'package:todo/app/register/screen/register.dart';
import 'package:todo/constant/app_colors.dart';
import 'package:todo/constant/app_navigator.dart';
import 'package:todo/constant/app_text.dart';
import 'package:todo/constant/app_text_style.dart';

class LoginToRegister extends StatelessWidget {
  const LoginToRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigators.go(
          context,
          const RegisterScreen(),
        );
      },
      child: Container(
        color: AppColors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              AppTexts.loginToregister,
              style: AppTextStyle.faceId(context),
            ),
          ],
        ),
      ),
    );
  }
}
