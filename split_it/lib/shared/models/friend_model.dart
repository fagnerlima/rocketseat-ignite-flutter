import 'package:split_it/shared/models/base_model.dart';

class FriendModel extends BaseModel {
  String name;

  FriendModel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
    };
  }

  factory FriendModel.fromMap(Map<String, dynamic> map) {
    return FriendModel(
      name: map['name'] as String,
    );
  }
}
