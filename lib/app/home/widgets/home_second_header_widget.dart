import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constant/app_box_decoration.dart';
import '../../../constant/app_navigator.dart';
import '../../../constant/app_paddings.dart';
import '../../../constant/app_text.dart';
import '../../../constant/app_text_style.dart';
import '../../../cubit/notes/note_cubit.dart';
import '../../note/screens/note_screen.dart';

class HomeSecondHeaderWidget extends StatelessWidget {
  const HomeSecondHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    NoteCubit noteCubit = context.watch<NoteCubit>();
    return Padding(
      padding: AppPaddings.lr12,
      child: Row(
        children: [
          Text(
            AppTexts.noteBooks,
            style: AppTextStyle.headerText(context),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              noteCubit.noteController.clear();
              noteCubit.titleController.clear();
              AppNavigators.go(
                context,
                const NoteScreen(),
              );
            },
            child: Container(
              alignment: Alignment.center,
              decoration: AppBoxDecoration.addButton(context).copyWith(
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              child: Icon(
                Icons.add_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
