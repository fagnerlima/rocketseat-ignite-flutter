import 'package:google_sign_in/google_sign_in.dart';

class User {
  final String id;
  final String email;
  final String? name;
  final String? photoUrl;

  User({
    required this.id,
    required this.email,
    this.name,
    this.photoUrl
  });

  factory User.google(GoogleSignInAccount account) {
    return User(
        id: account.id,
        email: account.email,
        name: account.displayName,
        photoUrl: account.photoUrl
    );
  }

  @override
  String toString() {
    return 'User: {id: $id, email: $email, name: $name, photoUrl: $photoUrl}';
  }
}