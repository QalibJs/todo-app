import 'dart:async';

import 'package:local_auth/local_auth.dart';

class LocalAuthService {
  static final auth = LocalAuthentication();

  static Future<bool> canAuth() async =>
      await auth.canCheckBiometrics || await auth.isDeviceSupported();

  static Future<bool> authenticate() async {
    try {
      if (!await canAuth()) return false;

      return await auth.authenticate(
        localizedReason: "Face ID",
        authMessages: [],
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
    } catch (e) {
      return false;
    }
  }
}
