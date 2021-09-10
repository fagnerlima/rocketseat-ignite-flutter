import 'package:google_sign_in/google_sign_in.dart';

import 'models/user_model/user.dart';

abstract class LoginService {
  Future<User> googleSignIn();
}

class LoginServiceImpl implements LoginService {
  @override
  Future<User> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email'
      ],
    );
    final googleAccount = (await _googleSignIn.signIn())!;

    return User.google(googleAccount);
  }
}