import 'package:flutter/material.dart';
import 'package:todo/constant/app_box_decoration.dart';
import 'package:todo/constant/app_colors.dart';
import 'package:todo/constant/app_text.dart';
import 'package:todo/constant/app_text_style.dart';

class NoteButtonWidget extends StatelessWidget {
  const NoteButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 65,
      decoration: AppBoxDecoration.button,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.transparent,          
        ),
        child: Text(
          AppTexts.add,
          style: AppTextStyle.buttonText,
        ),
        onPressed: () {},
      ),
    );
  }
}
