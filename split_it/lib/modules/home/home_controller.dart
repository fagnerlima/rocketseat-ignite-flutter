import 'package:mobx/mobx.dart';
import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';
import 'package:split_it/shared/repositories/events_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  final eventsRepository = EventsRepository();

  @observable
  HomeState state = HomeStateEmpty();

  @action
  getEvents() async {
    state = HomeStateLoading();

    try {
      final response = await eventsRepository.get();
      state = HomeStateSuccess(events: response);
    } catch (e) {
      state = HomeStateFailure(message: e.toString());
    }
  }
}