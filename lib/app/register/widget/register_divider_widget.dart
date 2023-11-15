import 'package:flutter/material.dart';
import 'package:todo/constant/app_box_decoration.dart';
import 'package:todo/constant/app_paddings.dart';
import 'package:todo/extension/context_extension.dart';

class RegisterDividerWidget extends StatelessWidget {
  const RegisterDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 1,
      padding: AppPaddings.lr12,
      decoration: AppBoxDecoration.gradientBox,
    );
  }
}