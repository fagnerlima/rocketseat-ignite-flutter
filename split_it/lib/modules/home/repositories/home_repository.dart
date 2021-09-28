import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/shared/models/event.dart';

abstract class HomeRepository {
  Future<List<Event>> getEvents();
  Future<Dashboard> getDashboard();
}