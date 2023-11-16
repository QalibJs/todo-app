import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:todo/app/auth/screen/auth_screen.dart';
import 'app/register/screen/register.dart';
import 'cubit/auth/auth_cubit.dart';
import 'cubit/notes/note_cubit.dart';
import 'theme/theme.dart';

class MyApp extends StatelessWidget {
  final int? note;
  const MyApp({super.key, this.note});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (
        BuildContext context,
        Orientation orientation,
        DeviceType deviceType,
      ) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => NoteCubit(),
            ),
            BlocProvider(
              create: (context) => AuthCubit(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: lightMode,
            darkTheme: darkMode,
            home: note == 1 ? const AuthScreen() : const RegisterScreen(),
          ),
        );
      },
    );
  }
}
