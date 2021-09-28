import 'dart:ui';

import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';

class HomeController {
  HomeState state = HomeStateEmpty();

  late HomeRepository repository;

  HomeController() {
    repository = HomeRepositoryMock();
  }

  getEvents(VoidCallback onUpdate) async {
    state = HomeStateLoading();
    onUpdate();
    final response = await repository.getEvents();
    state = HomeStateSuccess(events: response);
    onUpdate();
  }
}