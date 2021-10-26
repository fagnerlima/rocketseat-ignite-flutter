import 'dart:ui';

import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';

class AppBarController {
  AppBarState state = AppBarStateEmpty();

  late HomeRepository homeRepository;
  Function(AppBarState state)? onListen;

  AppBarController({ HomeRepository? homeRepository }) {
    this.homeRepository = homeRepository ?? HomeRepositoryMock();
  }

  getDashboard(VoidCallback onUpdate) async {
    state = AppBarStateLoading();
    update();
    onUpdate();

    try {
      final response = await homeRepository.getDashboard();
      state = AppBarStateSuccess(dashboard: response);
    } catch (e) {
      state = AppBarStateFailure(message: e.toString());
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

  void listen(Function(AppBarState state) onChange) {
    onListen = onChange;
  }
}