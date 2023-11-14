import 'package:flutter/material.dart';
import 'package:todo/constant/app_paddings.dart';
import 'package:todo/constant/app_text.dart';
import 'package:todo/global/global_button_widget.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.tb12,
      child: GlobalButtonWidget(
        text: AppTexts.login,
      ),
    );
  }
}
