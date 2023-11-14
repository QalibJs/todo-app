import 'package:flutter/material.dart';
import '../../../constant/app_paddings.dart';
import '../../../global/global_button_widget.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.tb12,
      child: const GlobalButtonWidget(text: 'register'),
    );
  }
}
