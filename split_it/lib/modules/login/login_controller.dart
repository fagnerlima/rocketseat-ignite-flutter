import 'package:flutter/cupertino.dart';
import 'package:split_it/modules/login/login_state.dart';

import 'login_service.dart';

class LoginController {
  final LoginService service;

  LoginState state = LoginStateEmpty();
  Function(LoginState state)? onChange;
  VoidCallback onUpdate;

  LoginController({
    required this.service,
    required this.onUpdate
  });

  Future<void> googleSignIn() async {
    try {
      state = LoginStateLoading();
      update();

      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
      update();
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
      update();
    }
  }

  void update() {
    onUpdate();

    if (onChange != null) {
      onChange!(state);
    }
  }

  void listen(Function(LoginState state) onChange) {
    this.onChange = onChange;
  }
}