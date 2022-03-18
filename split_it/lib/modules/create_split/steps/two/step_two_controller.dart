import 'package:mobx/mobx.dart';
import 'package:split_it/shared/models/friend_model.dart';
import 'package:split_it/shared/repositories/friends_repository.dart';

part 'step_two_controller.g.dart';

class StepTwoController = StepTwoControllerBase with _$StepTwoController;

abstract class StepTwoControllerBase with Store {
  final repository = FriendsRepository();

  @observable
  String search = '';

  @action
  change(String value) {
    search = value;
  }

  @computed
  Future<List<FriendModel>?> get friends async {
    if (search.isEmpty) {
      return [];
    }

    return await repository.where(key: 'name', value: search);
  }
}
