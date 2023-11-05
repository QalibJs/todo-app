import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/constant/app_box_decoration.dart';
import 'package:todo/constant/app_text.dart';
import 'package:todo/cubit/notes/note_cubit.dart';
import 'package:todo/global/widgets/global_input_widge.dart';

class NoteAppBarWidget extends StatelessWidget {
  const NoteAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    NoteCubit noteCubit = context.watch<NoteCubit>();
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: GlobalInputWidget(
            controller: noteCubit.titleController,
            hintText: AppTexts.title,
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
