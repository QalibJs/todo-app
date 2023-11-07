import 'package:flutter/material.dart';
import 'package:todo/app/note/screens/note_screen.dart';
import 'package:todo/constant/app_box_decoration.dart';
import 'package:todo/constant/app_navigator.dart';
import 'package:todo/constant/app_paddings.dart';
import 'package:todo/constant/app_text.dart';
import 'package:todo/constant/app_text_style.dart';

class HomeSecondHeaderWidget extends StatelessWidget {
  const HomeSecondHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
              AppNavigators.go(
                context,
                const NoteScreen(),
              );
            },
            child: Container(
              alignment: Alignment.center,
              decoration: AppBoxDecoration.addButton(context).copyWith(border: Border.all(color: Theme.of(context).colorScheme.primary)),
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
