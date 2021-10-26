import 'dart:ui';

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

  getEvents(VoidCallback onUpdate) async {
    state = HomeStateLoading();
    update();

    try {
      final response = await repository.getEvents();
      state = HomeStateSuccess(events: response);
    } catch (e) {
      state = HomeStateFailure(message: e.toString());
    } finally {
      update();
      onUpdate();
    }

  }

  void update() {
    if (onListen != null) {
      onListen!(state);
    }
  }

  void listen(Function(HomeState state) onChange) {
    onListen = onChange;
  }
}