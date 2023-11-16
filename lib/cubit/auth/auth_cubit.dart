import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/data/service/hive/hive_service.dart';

class AuthCubit extends Cubit<int> {
  AuthCubit() : super(0);

  bool isAuth = false;

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  GlobalKey<FormState> registerKey = GlobalKey<FormState>();
  TextEditingController loginUsernameController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  TextEditingController registerUsernameController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController registerPasswordAgainController =
      TextEditingController();

  void checkAuth(bool auth) {
    isAuth = auth;
  }

  void saveState(String key, int value) {
    HiveService.instance.then(
      (hive) => hive.saveData(key, value),
    );
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
