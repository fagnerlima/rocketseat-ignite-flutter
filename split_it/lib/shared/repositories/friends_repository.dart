import 'package:split_it/shared/models/friend_model.dart';
import 'package:split_it/shared/repositories/firebase_repository.dart';

class FriendsRepository extends FirebaseRepository<FriendModel> {
  @override
  String get collection => '/friends';

  @override
  FriendModel fromMap(Map<String, dynamic> map) {
    throw UnimplementedError();
  }
}
