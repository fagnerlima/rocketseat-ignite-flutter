import 'package:cloud_firestore/cloud_firestore.dart';

import 'base_model.dart';
import 'friend_model.dart';
import 'item_model.dart';

class EventModel extends BaseModel {
  final String name;
  final DateTime? created;
  final List<ItemModel> items;
  final List<FriendModel> friends;

  int get people => friends.length;

  double get value {
    if (items.isEmpty) {
      return 0;
    }

    return items.reduce((value, element) =>
        value = value.copyWith(value: value.value + element.value)).value;
  }

  double get splitedValue => value / people;

  const EventModel({
    this.name = '',
    this.created,
    this.items = const [],
    this.friends = const [],
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
      items: items ?? this.items,
      friends: friends ?? this.friends,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'created': FieldValue.serverTimestamp(),
      'value': this.value,
      'items': this.items.map((e) => e.toMap()).toList(),
      'friends': this.friends.map((e) => e.toMap()).toList(),
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      name: map['name'] as String,
      created: map['created'] as DateTime,
      items: map['items'] as List<ItemModel>,
      friends: map['friends'] as List<FriendModel>,
    );
  }

}