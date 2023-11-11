import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<int> {
  AuthCubit() : super(0);

  bool isAuth = false;

  void checkAuth(bool auth) {
    isAuth = auth  ;
  }
}
