import 'package:mobx/mobx.dart';
import 'package:split_it/shared/models/friend_model.dart';
import 'package:split_it/shared/models/item_model.dart';

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
  List<FriendModel> _selectedFriends = <FriendModel>[];

  @observable
  List<ItemModel> _items = <ItemModel>[];

  @computed
  bool get enabledNavigateButton {
    switch (currentPage) {
      case 0:
        return _eventName.isNotEmpty;
      case 1:
        return _selectedFriends.isNotEmpty;
      case 2:
        return _items.isNotEmpty;
      default:
        return false;
    }
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

  @action
  void setItems(List<ItemModel> value) => _items = value;

}
