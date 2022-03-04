part of 'login_controller.dart';

mixin _$LoginController on _LoginControllerBase, Store {
  final _$statusAtom = Atom(name: '_LoginControllerBase.state');
  final _$googleSignInAsyncAction = AsyncAction('LoginController');

  @override
  LoginState get state {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();

    return super.state;
  }

  @override
  set state(LoginState _state) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.state = _state;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom}_set');
  }

  @override
  Future<void> googleSignIn() {
    return _$googleSignInAsyncAction.run(() => super.googleSignIn());
  }
}
