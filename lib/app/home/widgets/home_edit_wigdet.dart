import 'package:flutter/material.dart';

import '../../../constant/app_box_decoration.dart';
import '../../../constant/app_colors.dart';
import '../../../constant/app_paddings.dart';
import '../../../constant/app_text_style.dart';

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
                ? AppTextStyle.headerNotes(context).copyWith(color: AppColors.white)
                : AppTextStyle.overFlowedHeaderNotes(context).copyWith(color: AppColors.white),
          ),
        ),
        const Spacer(),
        Container(
          padding: AppPaddings.all3,
          decoration: AppBoxDecoration.addButton(context),
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
