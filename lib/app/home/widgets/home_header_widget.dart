import 'package:flutter/material.dart';

import '../../../constant/app_sized_box.dart';
import 'home_divider_widget.dart';
import 'home_hi_widget.dart';
import 'home_second_header_widget.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeHiWidget(),
        AppSizedBox.h10,
        const HomeDividerWidget(),
        AppSizedBox.h50,
        const HomeSecondHeaderWidget(),
      ],
    );
  }
}
