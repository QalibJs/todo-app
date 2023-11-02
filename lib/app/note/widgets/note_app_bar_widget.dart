import 'package:flutter/material.dart';
import 'package:todo/constant/app_colors.dart';
import 'package:todo/constant/app_text.dart';
import 'package:todo/global/widgets/global_input_widge.dart';

class NoteAppBarWidget extends StatelessWidget {
  const NoteAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.white,
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: GlobalInputWidget(
        hintText: AppTexts.title,
        isPassword: false,
      ),
    );
  }
}
