import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/models/user_model/user.dart';

class LoginController {
  LoginState state = LoginStateEmpty();
  User? user;
  VoidCallback onUpdate;

  LoginController({
    required this.onUpdate
  });

  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email'
      ],
    );

    try {
      state = LoginStateLoading();
      onUpdate();

      final googleAccount = (await _googleSignIn.signIn())!;
      user = User.google(googleAccount);

      state = LoginStateSuccess(user: user!);
      onUpdate();
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
      onUpdate();
    }
  }
}