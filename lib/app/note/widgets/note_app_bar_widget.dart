import 'package:flutter/material.dart';
import 'package:todo/constant/app_box_decoration.dart';
import 'package:todo/constant/app_text.dart';
import 'package:todo/global/widgets/global_input_widge.dart';

class NoteAppBarWidget extends StatelessWidget {
  const NoteAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: GlobalInputWidget(
            hintText: AppTexts.title,
            isPassword: false,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: AppBoxDecoration.gradientBox,
          height: 1,
        )
      ],
    );
  }
}
