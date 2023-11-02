import 'package:flutter/material.dart';
import 'package:todo/constant/app_box_decoration.dart';
import 'package:todo/constant/app_colors.dart';
import 'package:todo/constant/app_paddings.dart';
import 'package:todo/constant/app_text_style.dart';

class HomeEditWidget extends StatelessWidget {
  const HomeEditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "basliq",
          style: AppTextStyle.headerNotes,
        ),
        const Spacer(),
        Container(
          padding: AppPaddings.all3,
          decoration: AppBoxDecoration.addButton,
          child: Icon(
            Icons.edit,
            size: 16,
            color: Appcolors.white,
          ),
        ),
      ],
    );
  }
}
