import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constant/app_text.dart';
import '../../../cubit/notes/note_cubit.dart';
import '../../../extension/context_extension.dart';
import '../../../global/widgets/global_input_widge.dart';

class NoteInputWidget extends StatelessWidget {
  const NoteInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    NoteCubit noteCubit = context.watch<NoteCubit>();
    return Expanded(
      child: SizedBox(
        width: context.width,
        child: GlobalInputWidget(
          controller: noteCubit.noteController,
          hintText: AppTexts.write,
          maxLines: 50,
        ),
      ),
    );
  }
}
