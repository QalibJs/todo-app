import 'package:flutter/material.dart';
import '../../login/screen/login_screen.dart';
import '../../../constant/app_colors.dart';
import '../../../constant/app_navigator.dart';
import '../../../constant/app_sized_box.dart';
import '../../../constant/app_text.dart';
import '../../../constant/app_text_style.dart';
import '../../../global/widgets/global_input_widge.dart';

class RegisterInputWidget extends StatelessWidget {
  const RegisterInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GlobalInputWidget(
          hintText: AppTexts.username,
          isPassword: false,
        ),
        AppSizedBox.h10,
        GlobalInputWidget(
          hintText: AppTexts.password,
          isPassword: true,
        ),
        AppSizedBox.h10,
        GlobalInputWidget(
          hintText: AppTexts.password,
          isPassword: true,
        ),
        AppSizedBox.h10,
        GestureDetector(
          onTap: () {
            AppNavigators.go(context, const LoginScreen());
          },
          child: Container(
            color: AppColors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  AppTexts.registerToLogin,
                  style: AppTextStyle.faceId(context),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
