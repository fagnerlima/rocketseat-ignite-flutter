import 'base_model.dart';
import 'friend_model.dart';
import 'item_model.dart';

class EventModel extends BaseModel {
  final String name;
  final DateTime? created;
  final double? value;
  final List<ItemModel> items;
  final List<FriendModel> friends;

  int get people => friends.length;

  const EventModel({
    this.name = '',
    this.created,
    this.value,
    this.items = const <ItemModel>[],
    this.friends = const <FriendModel>[],
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EventModel &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          created == other.created &&
          value == other.value &&
          items == other.items &&
          friends == other.friends);

  @override
  int get hashCode =>
      name.hashCode ^
      created.hashCode ^
      value.hashCode ^
      items.hashCode ^
      friends.hashCode;

  @override
  String toString() {
    return 'EventModel{' +
        ' name: $name,' +
        ' created: $created,' +
        ' value: $value,' +
        ' items: $items,' +
        ' friends: $friends,' +
        '}';
  }

  EventModel copyWith({
    String? name,
    DateTime? created,
    double? value,
    List<ItemModel>? items,
    List<FriendModel>? friends,
  }) {
    return EventModel(
      name: name ?? this.name,
      created: created ?? this.created,
      value: value ?? this.value,
      items: items ?? this.items,
      friends: friends ?? this.friends,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'created': this.created,
      'value': this.value,
      'items': this.items.map((e) => e.toMap()).toList(),
      'friends': this.friends.map((e) => e.toMap()).toList(),
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      name: map['name'] as String,
      created: map['created'] as DateTime,
      value: map['value'] as double,
      items: map['items'] as List<ItemModel>,
      friends: map['friends'] as List<FriendModel>,
    );
  }

}