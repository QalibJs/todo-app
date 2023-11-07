import 'package:flutter/material.dart';
import 'package:todo/constant/app_colors.dart';
import 'package:todo/constant/app_text_style.dart';

class HomeNotesWidget extends StatelessWidget {
  final String datas;
  const HomeNotesWidget({
    super.key,
    required this.datas,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      datas,
      style: datas.length < 120
          ? AppTextStyle.homeNotes(context).copyWith(color: AppColors.white)
          : AppTextStyle.overFlowedHomeNotes(context).copyWith(color: AppColors.white),
    );
  }
}
