import 'package:flutter/material.dart';
import 'package:todo/app/note/widgets/note_top_widget.dart';
import 'package:todo/constant/app_paddings.dart';

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
        ],
      ),
    );
  }
}
