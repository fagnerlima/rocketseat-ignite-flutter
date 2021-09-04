import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/models/user_model/user.dart';

class LoginController {
  User? user;

  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email'
      ],
    );

    try {
      final googleAccount = (await _googleSignIn.signIn())!;
      user = User.google(googleAccount);
      print(user);
    } catch (error) {
      print(error);
    }
  }
}