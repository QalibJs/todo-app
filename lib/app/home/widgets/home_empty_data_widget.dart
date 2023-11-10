import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constant/app_assets.dart';
import '../../../constant/app_box_decoration.dart';
import '../../../constant/app_sized_box.dart';
import '../../../constant/app_text.dart';
import '../../../constant/app_text_style.dart';

class HomeEmptyDataWidget extends StatelessWidget {
  const HomeEmptyDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSizedBox.h50,
        Container(
          width: 25.h,
          height: 25.h,
          decoration: AppBoxDecoration.imgDec(
            AppAssets.emptyIcn,
          ),
        ),
        AppSizedBox.h20,
        Text(
          AppTexts.empty,
          style: AppTextStyle.headerNotes(context),
        ),
      ],
    );
  }
}
