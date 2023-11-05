import 'package:flutter/material.dart';
import 'package:todo/app/note/widgets/note_app_bar_widget.dart';
import 'package:todo/app/note/widgets/note_full_widget.dart';
import 'package:todo/constant/app_colors.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        toolbarHeight: 100,
        foregroundColor: AppColors.white,
        title: const NoteAppBarWidget(),
      ),
      body: const NoteFullWidget(),
    );
  }
}
