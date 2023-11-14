import 'package:flutter/material.dart';
import 'package:todo/app/login/widgets/login_to_register.dart';
import 'package:todo/constant/app_sized_box.dart';
import 'package:todo/constant/app_text.dart';
import 'package:todo/global/widgets/global_input_widge.dart';

class LoginInputWidget extends StatelessWidget {
  const LoginInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GlobalInputWidget(hintText: AppTexts.username, isPassword: true),
        AppSizedBox.h10,
        GlobalInputWidget(hintText: AppTexts.password, isPassword: false),
        AppSizedBox.h10,
        const LoginToRegister()
      ],
    );
  }
}
