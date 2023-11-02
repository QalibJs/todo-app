import 'package:flutter/material.dart';
import 'package:todo/constant/app_colors.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.black,
      appBar: AppBar(
        backgroundColor: Appcolors.black,
        foregroundColor: Appcolors.white,
      ),
      body: Container(),
    );
  }
}