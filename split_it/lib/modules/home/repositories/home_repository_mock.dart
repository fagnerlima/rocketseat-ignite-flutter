import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomeRepositoryMock extends HomeRepository {
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
        created: DateTime.now(),
        value: 90,
      ),
      EventModel(
        name: 'Churrasco',
        created: DateTime.now(),
        value: 90,
      ),
      EventModel(
        name: 'Churrasco',
        created: DateTime.now(),
        value: -80,
      ),
      EventModel(
        name: 'Churrasco',
        created: DateTime.now(),
        value: 90,
      ),
      EventModel(
        name: 'Churrasco',
        created: DateTime.now(),
        value: -80,
      ),
      EventModel(
        name: 'Churrasco',
        created: DateTime.now(),
        value: 90,
      ),
      EventModel(
        name: 'Churrasco',
        created: DateTime.now(),
        value: -80,
      ),
    ];
  }
}