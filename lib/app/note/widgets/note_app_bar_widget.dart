import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/note/widgets/input_note.dart';
import '../../../constant/app_box_decoration.dart';
import '../../../cubit/notes/note_cubit.dart';
import '../../../extension/context_extension.dart';

class NoteAppBarWidget extends StatelessWidget {
  const NoteAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    NoteCubit noteCubit = context.watch<NoteCubit>();
    return Column(
      children: [
        SizedBox(
          width: context.width,
          child: InputNote(
            controller: noteCubit.titleController,
            maxLines: 1,
          ),
        ),
        Container(
          width: context.width,
          decoration: AppBoxDecoration.gradientBox,
          height: 1,
        )
      ],
    );
  }
}
