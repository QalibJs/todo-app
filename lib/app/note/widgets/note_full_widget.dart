import 'package:flutter/material.dart';
import 'note_button_widget.dart';
import 'note_input_widget.dart';
import 'note_top_widget.dart';
import '../../../constant/app_paddings.dart';

class NoteFullWidget extends StatelessWidget {
  const NoteFullWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.all12,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NoteTopWidget(),
          NoteInputWidget(),
          NoteButtonWidget(),
        ],
      ),
    );
  }
}
