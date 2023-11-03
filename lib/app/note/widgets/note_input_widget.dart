import 'package:flutter/material.dart';
import 'package:todo/constant/app_text.dart';
import 'package:todo/global/widgets/global_input_widge.dart';

class NoteInputWidget extends StatelessWidget {
  const NoteInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 293,
      child: GlobalInputWidget(
        hintText: AppTexts.write,
        isPassword: false,
        maxLines: 50,
      ),
    );
  }
}
