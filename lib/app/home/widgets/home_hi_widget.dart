import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/app_box_decoration.dart';
import '../../../constant/app_paddings.dart';
import '../../../constant/app_text.dart';
import '../../../constant/app_text_style.dart';

class HomeHiWidget extends StatelessWidget {
  const HomeHiWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.lr12,
      child: Row(
        children: [
          Text(
            AppTexts.hi,
            style: AppTextStyle.headerText(context),
          ),
          const Spacer(),
          Container(
            width: 6.h,
            alignment: Alignment.center,
            height: 6.h,
            decoration: AppBoxDecoration.ppDec(context).copyWith(
              color: Theme.of(context).colorScheme.background,
            ),
            child: Icon(
              Icons.verified_user,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
