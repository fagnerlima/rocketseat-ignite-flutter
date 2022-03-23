import 'package:mobx/mobx.dart';
import 'package:split_it/shared/models/friend_model.dart';
import 'package:split_it/shared/repositories/friends_repository.dart';

part 'step_two_controller.g.dart';

class StepTwoController = StepTwoControllerBase with _$StepTwoController;

abstract class StepTwoControllerBase with Store {
  final repository = FriendsRepository();

  @observable
  List<FriendModel> _friends = [];

  @observable
  List<FriendModel> _selectedFriends = [];

  @observable
  String _nameFilter = '';

  @computed
  List<FriendModel> get friends {
    if (_nameFilter.isEmpty) {
      return _friends;
    }

    return _friends
        .where((element) => element.name
            .toLowerCase()
            .contains(_nameFilter.toLowerCase()))
        .toList();
  }

  List<FriendModel> get selectedFriends => _selectedFriends;

  @action
  Future<void> getFriends() async {
    _friends = await repository.get();
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
}
