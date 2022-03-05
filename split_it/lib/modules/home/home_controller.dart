import 'package:mobx/mobx.dart';
import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  late HomeRepository repository;

  @observable
  HomeState state = HomeStateEmpty();

  _HomeController({ HomeRepository? repository }) {
    this.repository = repository ?? HomeRepositoryMock();
  }

  @action
  getEvents() async {
    state = HomeStateLoading();

    try {
      final response = await repository.getEvents();
      state = HomeStateSuccess(events: response);
    } catch (e) {
      state = HomeStateFailure(message: e.toString());
    }
  }
}