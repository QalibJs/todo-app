import 'package:flutter/material.dart';
import 'package:todo/app/register/widget/register_button_widget.dart';
import 'package:todo/app/register/widget/register_global_button_widget.dart';
import 'package:todo/app/register/widget/register_top_text.dart';
import 'package:todo/constant/app_paddings.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const RegisterTopText(),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: AppPaddings.all12,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegisterInputWidget(),
            RegisterButtonWidget(),
          ],
        ),
      ),
    );
  }
}
