import 'package:mobx/mobx.dart';
import 'package:split_it/modules/login/login_state.dart';

import 'login_service.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  final LoginService service;

  @observable
  LoginState state = LoginStateEmpty();

  _LoginController({ required this.service });

  @action
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
