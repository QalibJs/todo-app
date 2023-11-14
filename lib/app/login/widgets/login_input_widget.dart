import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/cubit/auth/auth_cubit.dart';
import 'login_to_register.dart';
import '../../../constant/app_sized_box.dart';
import '../../../constant/app_text.dart';
import '../../../global/widgets/global_input_widge.dart';

class LoginInputWidget extends StatelessWidget {
  const LoginInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.watch<AuthCubit>();
    return Column(
      children: [
        GlobalInputWidget(
          hintText: AppTexts.username,
          isPassword: false,
          controller: authCubit.loginUsernameController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'fill the blank';
            }
            return null;
          },
        ),
        AppSizedBox.h10,
        GlobalInputWidget(
          controller: authCubit.loginPasswordController,
          hintText: AppTexts.password,
          isPassword: true,
          validator: (value) {
            if (value!.isEmpty) {
              return 'fill the blank';
            }
            return null;
          },
        ),
        AppSizedBox.h10,
        const LoginToRegister()
      ],
    );
  }
}
