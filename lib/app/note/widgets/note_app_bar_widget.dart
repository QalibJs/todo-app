import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constant/app_box_decoration.dart';
import '../../../constant/app_text.dart';
import '../../../cubit/notes/note_cubit.dart';
import '../../../extension/context_extension.dart';
import '../../../global/widgets/global_input_widge.dart';

class NoteAppBarWidget extends StatelessWidget {
  const NoteAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    NoteCubit noteCubit = context.watch<NoteCubit>();
    return Column(
      children: [
        SizedBox(
          
          width: context.width,
          child: GlobalInputWidget(
            controller: noteCubit.titleController,
            hintText: AppTexts.title, isPassword: false,
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
