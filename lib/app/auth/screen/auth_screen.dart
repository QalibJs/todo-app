// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:todo/app/auth/widgets/auth_button_widget.dart';
import 'package:todo/constant/app_assets.dart';
import 'package:todo/constant/app_box_decoration.dart';
import 'package:todo/constant/app_sized_box.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          AppSizedBox.h50,
          AppSizedBox.h50,
          AppSizedBox.h50,
          AppSizedBox.h50,
          AppSizedBox.h50,
          AppSizedBox.h50,
          Container(
            width: 200,
            height: 200,
            decoration: AppBoxDecoration.imgDec(AppAssets.faceID),
          ),
          const Spacer(),
          const AuthButtonWidget()
        ],
      ),
    );
  }
}
