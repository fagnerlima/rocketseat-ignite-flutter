import 'package:mobx/mobx.dart';
import 'package:split_it/shared/models/friend_model.dart';

part 'create_split_controller.g.dart';

class CreateSplitController = _CreateSplitController
    with _$CreateSplitController;

abstract class _CreateSplitController with Store {
  final totalPages = 3;

  @observable
  int currentPage = 0;

  @observable
  String _eventName = '';

  @observable
  List<FriendModel> _selectedFriends = [];

  @computed
  bool get enabledNavigateButton {
    if (0 == currentPage && _eventName.isNotEmpty) {
      return true;
    }

    if (1 == currentPage && _selectedFriends.isNotEmpty) {
      return true;
    }

    return false;
  }

  @action
  setEventName(value) => _eventName = value;

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

  @action
  void setSelectedFriends(List<FriendModel> value) => _selectedFriends = value;

}
