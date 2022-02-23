import 'package:flutter_test/flutter_test.dart';
import 'package:gerencia_de_estado/gerencia_de_estado.dart';
import 'package:gerencia_de_estado/home_controller.dart';

void main() {
  late GerenciaDeEstado controller;

  setUp(() {
    controller = HomeController();
  });

  test('Testando a Gerência de Estado', () {
    expect(controller.state, isNull);
    controller.listen((state) {
      expect(controller.state, 'alterado');
    });
    controller.setState('alterado');
  });
}