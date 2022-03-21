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

  @action
  Future<void> getFriends() async {
    _friends = await repository.get();
  }

  @action
  void findFriends(String name) {
    _nameFilter = name;
  }
}
