import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/home/screen/home_screen.dart';
import 'package:todo/constant/app_navigator.dart';
import 'package:todo/constant/app_text.dart';
import 'package:todo/cubit/auth/auth_cubit.dart';
import '../../../constant/app_paddings.dart';
import '../../../global/global_button_widget.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.watch<AuthCubit>();
    return Padding(
      padding: AppPaddings.tb12,
      child: GlobalButtonWidget(
        text: AppTexts.register,
        onPressed: () {
          if (authCubit.registerKey.currentState!.validate()) {
            authCubit.saveState("note", 1);
            AppNavigators.goDelete(
              context,
              const HomeScreen(),
            );
          }
        },
      ),
    );
  }
}
