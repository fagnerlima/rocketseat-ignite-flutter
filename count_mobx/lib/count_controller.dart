import 'package:mobx/mobx.dart';

class CountController {
  final _count = Observable(0);

  late Action increment;

  CountController() {
    increment = Action(_increment);
  }

  int get count => _count.value;

  set count(int value) => _count.value = value;

  void _increment() {
    count++;
  }
}
