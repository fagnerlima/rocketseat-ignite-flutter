class ItemModel {
  final String name;
  final double value;

  const ItemModel({
    this.name = '',
    this.value = 0,
  });

  bool get isValid => name.trim().isNotEmpty && value > 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemModel &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          value == other.value);

  @override
  int get hashCode => name.hashCode ^ value.hashCode;

  @override
  String toString() {
    return 'ItemModel{' + ' name: $name,' + ' value: $value,' + '}';
  }

  ItemModel copyWith({
    String? name,
    double? value,
  }) {
    return ItemModel(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'value': this.value,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      name: map['name'] as String,
      value: map['value'] as double,
    );
  }
}
