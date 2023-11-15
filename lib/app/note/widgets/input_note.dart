import 'package:flutter/material.dart';
import 'package:todo/constant/app_text.dart';
import 'package:todo/constant/app_text_style.dart';

class InputNote extends StatelessWidget {
  final TextEditingController controller;
  final int maxLines;
  const InputNote({
    super.key,
    required this.controller,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      style: AppTextStyle.smallText(context),
      decoration:  InputDecoration(
        hintStyle: AppTextStyle.smallText(context),
        hintText: AppTexts.title,
      ),
    );
  }
}
