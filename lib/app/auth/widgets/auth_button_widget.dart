// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/home/screen/home_screen.dart';
import 'package:todo/constant/app_navigator.dart';
import 'package:todo/constant/app_paddings.dart';
import 'package:todo/constant/app_text_style.dart';
import 'package:todo/cubit/auth/auth_cubit.dart';
import 'package:todo/data/service/api/local_auth_service.dart';
import 'package:todo/extension/context_extension.dart';

class AuthButtonWidget extends StatelessWidget {
  const AuthButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.watch<AuthCubit>();
    return GestureDetector(
      onTap: () async {
        final auth = await LocalAuthService.authenticate();
        authCubit.checkAuth(auth);
        if (authCubit.isAuth == true) {
          AppNavigators.go(
            context,
            const HomeScreen(),
          );
        }
      },
      child: Container(
        width: context.width,
        alignment: Alignment.bottomCenter,
        padding: AppPaddings.all12,
        child: Text(
          "Use Face ID or Touch ID",
          style: AppTextStyle.faceId(context),
        ),
      ),
    );
  }
}
