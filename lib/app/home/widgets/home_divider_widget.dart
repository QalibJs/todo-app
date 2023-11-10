import 'package:flutter/material.dart';
import '../../../extension/context_extension.dart';
import '../../../constant/app_box_decoration.dart';

class HomeDividerWidget extends StatelessWidget {
  const HomeDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 1,
      decoration: AppBoxDecoration.gradientBox,
    );
  }
}
