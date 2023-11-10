import 'package:flutter/material.dart';
import '../../../constant/app_text.dart';
import '../../../constant/app_text_style.dart';

class NoteTopWidget extends StatelessWidget {
  const NoteTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTexts.notes,
      style: AppTextStyle.headerNotes(context),
    );
  }
}
