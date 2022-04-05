import 'package:split_it/shared/models/base_model.dart';

class FriendModel extends BaseModel {
  String name;
  String photoURL;

  FriendModel({
    required this.name,
    required this.photoURL,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FriendModel &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          photoURL == other.photoURL);

  @override
  int get hashCode => name.hashCode ^ photoURL.hashCode;

  @override
  String toString() {
    return 'FriendModel{' + ' name: $name,' + ' photoURL: $photoURL,' + '}';
  }

  FriendModel copyWith({
    String? name,
    String? photoURL,
  }) {
    return FriendModel(
      name: name ?? this.name,
      photoURL: photoURL ?? this.photoURL,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'photoURL': this.photoURL,
    };
  }

  factory FriendModel.fromMap(Map<String, dynamic> map) {
    const defaultPhotoURL = 'https://www.kindpng.com/picc/m/173-1731325_person-icon-png-transparent-png.png';

    return FriendModel(
      name: map['name'] as String,
      photoURL: (map['photoURL'] ?? defaultPhotoURL) as String,
    );
  }
}
