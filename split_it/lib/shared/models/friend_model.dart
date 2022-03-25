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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FriendModel &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;
}
