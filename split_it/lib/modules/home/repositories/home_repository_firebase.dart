import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/base_model.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/shared/repositories/firebase_repository.dart';

class HomeRepositoryFirebase implements FirebaseRepository, HomeRepository {
  @override
  Future<Dashboard> getDashboard() async {
    await Future.delayed(Duration(seconds: 2));

    return Dashboard(income: 100, expense: 50);
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));

    return [
      EventModel(
        name: 'Churrasco',
        created: DateTime.now()
      ),
      EventModel(
        name: 'Churrasco',
        created: DateTime.now()
      ),
      EventModel(
        name: 'Churrasco',
        created: DateTime.now()
      ),
      EventModel(
        name: 'Churrasco',
        created: DateTime.now()
      ),
      EventModel(
        name: 'Churrasco',
        created: DateTime.now()
      ),
      EventModel(
        name: 'Churrasco',
        created: DateTime.now()
      ),
      EventModel(
        name: 'Churrasco',
        created: DateTime.now()
      ),
    ];
  }

  @override
  // TODO: implement collection
  String get collection => throw UnimplementedError();

  @override
  Future<String?> create(BaseModel data) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  // TODO: implement firestore
  FirebaseFirestore get firestore => throw UnimplementedError();

  @override
  firstWhere() {
    // TODO: implement firstWhere
    throw UnimplementedError();
  }

  @override
  BaseModel fromMap(Map<String, dynamic> map) {
    // TODO: implement fromMap
    throw UnimplementedError();
  }

  @override
  Future<List<BaseModel>> get() {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  update() {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<List<BaseModel>> where({required String key, required String value}) {
    // TODO: implement where
    throw UnimplementedError();
  }
}