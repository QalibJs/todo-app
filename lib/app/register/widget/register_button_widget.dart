import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/register/widget/register_divider_widget.dart';
import 'package:todo/cubit/auth/auth_cubit.dart';
import '../../login/screen/login_screen.dart';
import '../../../constant/app_colors.dart';
import '../../../constant/app_navigator.dart';
import '../../../constant/app_sized_box.dart';
import '../../../constant/app_text.dart';
import '../../../constant/app_text_style.dart';
import '../../../global/widgets/global_input_widge.dart';

class RegisterInputWidget extends StatelessWidget {
  const RegisterInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.watch<AuthCubit>();
    return Form(
      key: authCubit.registerKey,
      child: Column(
        children: [
          GlobalInputWidget(
            hintText: AppTexts.username,
            isPassword: false,
            controller: authCubit.registerUsernameController,
            validator: (value) {
              if (value!.isEmpty) {
                return "fill blank";
              }
              return null;
            },
          ),
          const RegisterDividerWidget(),
          AppSizedBox.h10,
          GlobalInputWidget(
            hintText: AppTexts.password,
            isPassword: true,
            controller: authCubit.registerPasswordController,
            validator: (value) {
              if (value!.isEmpty) {
                return "fill blank";
              } else if (value.length < 8) {
                return "password length must be more 8";
              } else if (authCubit.registerPasswordController.text !=
                  authCubit.registerPasswordAgainController.text) {
                return "passwords don't match";
              }
              return null;
            },
          ),
          const RegisterDividerWidget(),
          AppSizedBox.h10,
          GlobalInputWidget(
            hintText: AppTexts.password,
            isPassword: true,
            controller: authCubit.registerPasswordAgainController,
            validator: (value) {
              if (value!.isEmpty) {
                return "fill blank";
              } else if (value.length < 8) {
                return "password length must be more 8";
              } else if (authCubit.registerPasswordController.text !=
                  authCubit.registerPasswordAgainController.text) {
                return "passwords don't match";
              }
              return null;
            },
          ),
          const RegisterDividerWidget(),
          AppSizedBox.h10,
          GestureDetector(
            onTap: () {
              AppNavigators.goDelete(context, const LoginScreen());
            },
            child: Container(
              color: AppColors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    AppTexts.registerToLogin,
                    style: AppTextStyle.faceId(context),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
