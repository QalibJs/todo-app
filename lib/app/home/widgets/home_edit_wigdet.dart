import 'package:flutter/material.dart';
import 'package:todo/constant/app_box_decoration.dart';
import 'package:todo/constant/app_colors.dart';
import 'package:todo/constant/app_paddings.dart';
import 'package:todo/constant/app_text_style.dart';

class HomeEditWidget extends StatelessWidget {
  final String title;
  const HomeEditWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: Text(
            title,
            style: title.length < 6
                ? AppTextStyle.headerNotes
                : AppTextStyle.overFlowedHeaderNotes,
          ),
        ),
        const Spacer(),
        Container(
          padding: AppPaddings.all3,
          decoration: AppBoxDecoration.addButton,
          child: Icon(
            Icons.edit,
            size: 16,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
