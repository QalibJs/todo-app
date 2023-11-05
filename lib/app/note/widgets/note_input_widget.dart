import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/constant/app_text.dart';
import 'package:todo/cubit/notes/note_cubit.dart';
import 'package:todo/global/widgets/global_input_widge.dart';

class NoteInputWidget extends StatelessWidget {
  const NoteInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    NoteCubit noteCubit = context.watch<NoteCubit>();
    return Expanded(
      
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: GlobalInputWidget(
          controller: noteCubit.noteController,
          hintText: AppTexts.write,
          maxLines: 50,
        ),
      ),
    );
  }
}
