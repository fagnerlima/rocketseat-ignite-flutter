import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:split_it/modules/home/home_controller.dart';
import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event.dart';

class HomeRepositoryMock extends Mock implements HomeRepository {}

void main() {
  late HomeController controller;
  late HomeRepository repository;

  setUp(() {
    repository = HomeRepositoryMock();
    controller = HomeController(
      repository: repository
    );
  });

  test('GetEvents deve retornar sucesso', () async {
    expect(controller.state, isInstanceOf<HomeStateEmpty>());

    final states = <HomeState>[];
    controller.listen((state) => states.add(state));

    when(repository.getEvents)
        .thenAnswer((invocation) async => [
          Event(
            title: 'title',
            created: DateTime.now(),
            value: 100,
            people: 1
          )
        ]);
    await controller.getEvents();

    expect(states[0], isInstanceOf<HomeStateLoading>());
    expect(states[1], isInstanceOf<HomeStateSuccess>());
    expect(states.length, 2);
  });

  test('GetEvents deve retornar erro', () async {
    expect(controller.state, isInstanceOf<HomeStateEmpty>());

    final states = <HomeState>[];
    controller.listen((state) => states.add(state));

    when(repository.getEvents)
        .thenThrow('Erro');
    await controller.getEvents();

    expect(states[0], isInstanceOf<HomeStateLoading>());
    expect(states[1], isInstanceOf<HomeStateFailure>());
    expect((states[1] as HomeStateFailure).message, 'Erro');
    expect(states.length, 2);
  });
}
