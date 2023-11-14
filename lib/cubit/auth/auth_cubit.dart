import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<int> {
  AuthCubit() : super(0);

  bool isAuth = false;

  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController loginUsernameController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  TextEditingController registerUsernameController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController registerPasswordAgainController =
      TextEditingController();

  void checkAuth(bool auth) {
    isAuth = auth;
  }

  @override
  Future<void> close() {
    loginUsernameController.dispose();
    loginPasswordController.dispose();
    registerUsernameController.dispose();
    registerPasswordController.dispose();
    registerPasswordAgainController.dispose();
    return super.close();
  }
}
