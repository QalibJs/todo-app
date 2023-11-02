import 'package:flutter/material.dart';
import 'package:todo/app/home/widgets/home_divider_widget.dart';
import 'package:todo/app/home/widgets/home_hi_widget.dart';
import 'package:todo/app/home/widgets/home_second_header_widget.dart';
import 'package:todo/constant/app_sized_box.dart';

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
