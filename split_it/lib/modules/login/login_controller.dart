import 'package:mobx/mobx.dart';
import 'package:split_it/modules/login/login_state.dart';

import 'login_service.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

class _LoginControllerBase with Store {
  final LoginService service;

  LoginState state = LoginStateEmpty();

  _LoginControllerBase({
    required this.service,
  });

  Future<void> googleSignIn() async {
    try {
      state = LoginStateLoading();

      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
    }
  }
}
