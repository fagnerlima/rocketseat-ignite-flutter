import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_controller.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';

class HomeRepositoryMock extends Mock implements HomeRepository {}

void main() {
  late AppBarController controller;
  late HomeRepository homeRepository;

  setUp(() {
    homeRepository = HomeRepositoryMock();
    controller = AppBarController(
      homeRepository: homeRepository
    );
  });

  test('GetDashboard deve retornar sucesso', () async {
    expect(controller.state, isInstanceOf<AppBarStateEmpty>());

    final states = <AppBarState>[];
    controller.listen((state) => states.add(state));

    when(homeRepository.getDashboard)
        .thenAnswer((invocation) async => Dashboard(income: 100, expense: 50));
    await controller.getDashboard();

    expect(states[0], isInstanceOf<AppBarStateLoading>());
    expect(states[1], isInstanceOf<AppBarStateSuccess>());
    expect(states.length, 2);
  });

  test('GetDashboard deve retornar erro', () async {
    expect(controller.state, isInstanceOf<AppBarStateEmpty>());

    final states = <AppBarState>[];
    controller.listen((state) => states.add(state));

    when(homeRepository.getDashboard)
        .thenThrow('Erro');
    await controller.getDashboard();

    expect(states[0], isInstanceOf<AppBarStateLoading>());
    expect(states[1], isInstanceOf<AppBarStateFailure>());
    expect((states[1] as AppBarStateFailure).message, 'Erro');
    expect(states.length, 2);
  });
}
