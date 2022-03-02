import 'package:mobx/mobx.dart';
import 'package:split_it/modules/login/login_state.dart';

import 'login_service.dart';

class LoginController {
  final _state = Observable<LoginState>(LoginStateEmpty());
  final _actionController = ActionController();
  final LoginService service;

  LoginController({
    required this.service,
  });

  LoginState get state => _state.value;

  set state(LoginState value) => _state.value = value;

  Future<void> googleSignIn() async {
    final actionName = 'LoginController::googleSignIn';
    final actionStartTime = DateTime.now();
    _actionController.startAction(name: actionName);

    try {
      state = LoginStateLoading();

      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
    } finally {
      _actionController.endAction(ActionRunInfo(name: actionName,
          startTime: actionStartTime));
    }
  }
}