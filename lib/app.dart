import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:todo/app/register/screen/register.dart';
import 'package:todo/cubit/auth/auth_cubit.dart';
import 'cubit/notes/note_cubit.dart';
import 'theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            home: const RegisterScreen(),
          ),
        );
      },
    );
  }
}
