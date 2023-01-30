import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/shared/repositories/firebase_repository.dart';

class EventsRepository extends FirebaseRepository<EventModel> {
  @override
  String get collection => '/events';

  @override
  EventModel fromMap(Map<String, dynamic> map) {
    return EventModel.fromMap(map);
  }

}