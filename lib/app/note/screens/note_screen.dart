import 'package:flutter/material.dart';
import 'package:todo/app/note/widgets/note_app_bar_widget.dart';
import 'package:todo/app/note/widgets/note_full_widget.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        toolbarHeight: 100,
        foregroundColor: Theme.of(context).colorScheme.primary,
        title: const NoteAppBarWidget(),
      ),
      body: const NoteFullWidget(),
    );
  }
}
