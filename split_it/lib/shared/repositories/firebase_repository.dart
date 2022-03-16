import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:split_it/shared/models/base_model.dart';

abstract class FirebaseRepository<T extends BaseModel> {
  final firestore = FirebaseFirestore.instance;

  String get collection;

  Future<String?> create(T data) async {
    try {
      final response = await firestore
          .collection(collection)
          .add(data.toMap());

      return response.id;
    } catch (e) {
      return null;
    }
  }

  Future<List<T>?> where({
    required String key,
    required String value
  }) async {
    try {
      final response = await firestore
          .collection(collection)
          .where(key, isEqualTo: value)
          .get();

      return response.docs
          .map((e) => fromMap(e.data()))
          .toList();
    } catch (e) {
      return null;
    }
  }

  update() {}

  get() {}

  delete() {}

  firstWhere() {}

  T fromMap(Map<String, dynamic> map);
}
