import 'package:mobx/mobx.dart';

part 'create_split_controller.g.dart';

class CreateSplitController = _CreateSplitController
    with _$CreateSplitController;

abstract class _CreateSplitController with Store {
  final totalPages = 3;

  @observable
  int currentPage = 0;

  String _eventName = '';

  set eventName(value) => _eventName = value;

  @action
  backPage() {
    if (currentPage > 0) {
      currentPage--;
    }
  }

  @action
  nextPage() {
    if (currentPage < totalPages - 1) {
      currentPage++;
    }
  }

  bool disabledNavigateButton() {
    return _eventName.isEmpty;
  }
}
