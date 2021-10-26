
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

  getDashboard() async {
    update(AppBarStateLoading());

    try {
      final response = await homeRepository.getDashboard();
      update(AppBarStateSuccess(dashboard: response));
    } catch (e) {
      update(AppBarStateFailure(message: e.toString()));
    }
  }

  void update(AppBarState state) {
    this.state = state;

    if (onListen != null) {
      onListen!(state);
    }
  }

  void listen(Function(AppBarState state) onChange) {
    onListen = onChange;
  }
}