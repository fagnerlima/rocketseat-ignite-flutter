import 'dart:ui';

import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';

class AppBarController {
  AppBarState state = AppBarStateEmpty();

  late HomeRepository homeRepository;

  AppBarController() {
    homeRepository = HomeRepositoryMock();
  }

  getDashboard(VoidCallback onUpdate) async {
    state = AppBarStateLoading();
    onUpdate();
    final response = await homeRepository.getDashboard();
    state = AppBarStateSuccess(dashboard: response);
    onUpdate();
  }
}