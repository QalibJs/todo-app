import 'package:flutter/material.dart';
import '../../../constant/app_box_decoration.dart';
import '../../../constant/app_colors.dart';
import '../../../constant/app_text.dart';
import '../../../constant/app_text_style.dart';
import '../../../extension/context_extension.dart';

class NoteButtonWidget extends StatelessWidget {
  const NoteButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 65,
      decoration: AppBoxDecoration.button,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.transparent,          
        ),
        child: Text(
          AppTexts.add,
          style: AppTextStyle.buttonText(context),
        ),
        onPressed: () {},
      ),
    );
  }
}
