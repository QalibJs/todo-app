import 'package:flutter/material.dart';
import 'package:todo/app/login/widgets/login_button_widget.dart';
import 'package:todo/app/login/widgets/login_input_widget.dart';
import 'package:todo/app/register/widget/register_top_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        title: const RegisterTopText(),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginInputWidget(),
          LoginButtonWidget(),
        ],
      ),
    );
  }
}
