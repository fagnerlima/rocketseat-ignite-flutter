import 'package:mobx/mobx.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/shared/models/friend_model.dart';
import 'package:split_it/shared/models/item_model.dart';
import 'package:split_it/shared/repositories/events_repository.dart';

part 'create_split_controller.g.dart';

class CreateSplitController = _CreateSplitController
    with _$CreateSplitController;

abstract class _CreateSplitController with Store {
  final EventsRepository repository;

  final totalPages = 3;

  @observable
  int currentPage = 0;

  @observable
  EventModel _event = EventModel();

  @observable
  String status = 'empty';

  _CreateSplitController({
    required this.repository
  });

  @computed
  EventModel get event => _event;

  @computed
  bool get enabledNavigateButton {
    switch (currentPage) {
      case 0:
        return _event.name.isNotEmpty;
      case 1:
        return _event.friends.isNotEmpty;
      case 2:
        return _event.items.isNotEmpty;
      default:
        return false;
    }
  }

  @computed
  bool get isLastPage => currentPage == totalPages - 1;
  
  @action
  onChanged({
    String? name,
    List<FriendModel>? friends,
    List<ItemModel>? items
  }) => _event = _event.copyWith(name: name, friends: friends, items: items);

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
  Future<void> saveEvent() async {
    try {
      status = 'loading';
      final response = await repository.create(_event);
      print(response);
      status = 'success';
      currentPage++;
    } catch (e) {
      status = 'error';
    }
  }

}
