import 'package:mobx/mobx.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/shared/models/friend_model.dart';
import 'package:split_it/shared/repositories/friends_repository.dart';

part 'step_two_controller.g.dart';

class StepTwoController = StepTwoControllerBase with _$StepTwoController;

abstract class StepTwoControllerBase with Store {
  final CreateSplitController controller;
  final repository = FriendsRepository();

  @observable
  ObservableList<FriendModel> _friends = ObservableList.of([]);

  @observable
  ObservableList<FriendModel> _selectedFriends = ObservableList.of([]);

  @observable
  String _nameFilter = '';

  StepTwoControllerBase({ required this.controller }) {
    autorun((_) => controller.onChanged(friends: _selectedFriends.toList()));
  }

  @computed
  List<FriendModel> get friends {
    List<FriendModel> friends = [];

    if (_selectedFriends.isEmpty) {
      friends.addAll(_friends);
    } else {
      friends.addAll(_friends
          .where((f) => !checkIsSelected(f))
          .toList());
    }

    if (_nameFilter.isNotEmpty) {
      return friends
          .where((f) => checkNameFilter(f))
          .toList();
    }

    return friends;
  }

  List<FriendModel> get selectedFriends => _selectedFriends;

  @action
  Future<void> getFriends() async {
    _friends = ObservableList.of(await repository.get());
  }

  @action
  void findFriends(String name) {
    _nameFilter = name;
  }

  @action
  void addFriend(FriendModel friend) {
    _selectedFriends.add(friend);
  }

  @action
  void removeFriend(FriendModel friend) {
    _selectedFriends.remove(friend);
  }

  bool checkNameFilter(FriendModel friend) {
    return friend.name
        .toLowerCase()
        .contains(_nameFilter.toLowerCase());
  }

  bool checkIsSelected(FriendModel friend) {
    return _selectedFriends.contains(friend);
  }
}
