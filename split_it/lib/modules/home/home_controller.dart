import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';

class HomeController {
  HomeState state = HomeStateEmpty();

  late HomeRepository repository;
  Function(HomeState state)? onListen;

  HomeController({ HomeRepository? repository }) {
    this.repository = repository ?? HomeRepositoryMock();
  }

  getEvents() async {
    update(HomeStateLoading());

    try {
      final response = await repository.getEvents();
      update(HomeStateSuccess(events: response));
    } catch (e) {
      update(HomeStateFailure(message: e.toString()));
    }
  }

  void update(HomeState state) {
    this.state = state;

    if (onListen != null) {
      onListen!(state);
    }
  }

  void listen(Function(HomeState state) onChange) {
    onListen = onChange;
  }
}