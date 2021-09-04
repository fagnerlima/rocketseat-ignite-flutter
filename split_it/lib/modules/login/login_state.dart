import 'package:split_it/modules/login/models/user_model/user.dart';

abstract class LoginState {}

class LoginStateEmpty extends LoginState {}

class LoginStateLoading extends LoginState {}

class LoginStateFailure extends LoginState {
  final String message;

  LoginStateFailure({
    required this.message
  });
}

class LoginStateSuccess extends LoginState {
  final User user;

  LoginStateSuccess({
    required this.user
  });
}