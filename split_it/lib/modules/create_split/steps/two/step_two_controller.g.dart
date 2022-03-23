// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_two_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StepTwoController on StepTwoControllerBase, Store {
  Computed<List<FriendModel>>? _$friendsComputed;

  @override
  List<FriendModel> get friends =>
      (_$friendsComputed ??= Computed<List<FriendModel>>(() => super.friends,
              name: 'StepTwoControllerBase.friends'))
          .value;

  final _$_friendsAtom = Atom(name: 'StepTwoControllerBase._friends');

  @override
  List<FriendModel> get _friends {
    _$_friendsAtom.reportRead();
    return super._friends;
  }

  @override
  set _friends(List<FriendModel> value) {
    _$_friendsAtom.reportWrite(value, super._friends, () {
      super._friends = value;
    });
  }

  final _$_selectedFriendsAtom =
      Atom(name: 'StepTwoControllerBase._selectedFriends');

  @override
  List<FriendModel> get _selectedFriends {
    _$_selectedFriendsAtom.reportRead();
    return super._selectedFriends;
  }

  @override
  set _selectedFriends(List<FriendModel> value) {
    _$_selectedFriendsAtom.reportWrite(value, super._selectedFriends, () {
      super._selectedFriends = value;
    });
  }

  final _$_nameFilterAtom = Atom(name: 'StepTwoControllerBase._nameFilter');

  @override
  String get _nameFilter {
    _$_nameFilterAtom.reportRead();
    return super._nameFilter;
  }

  @override
  set _nameFilter(String value) {
    _$_nameFilterAtom.reportWrite(value, super._nameFilter, () {
      super._nameFilter = value;
    });
  }

  final _$getFriendsAsyncAction =
      AsyncAction('StepTwoControllerBase.getFriends');

  @override
  Future<void> getFriends() {
    return _$getFriendsAsyncAction.run(() => super.getFriends());
  }

  final _$StepTwoControllerBaseActionController =
      ActionController(name: 'StepTwoControllerBase');

  @override
  void findFriends(String name) {
    final _$actionInfo = _$StepTwoControllerBaseActionController.startAction(
        name: 'StepTwoControllerBase.findFriends');
    try {
      return super.findFriends(name);
    } finally {
      _$StepTwoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addFriend(FriendModel friend) {
    final _$actionInfo = _$StepTwoControllerBaseActionController.startAction(
        name: 'StepTwoControllerBase.addFriend');
    try {
      return super.addFriend(friend);
    } finally {
      _$StepTwoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFriend(FriendModel friend) {
    final _$actionInfo = _$StepTwoControllerBaseActionController.startAction(
        name: 'StepTwoControllerBase.removeFriend');
    try {
      return super.removeFriend(friend);
    } finally {
      _$StepTwoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
friends: ${friends}
    ''';
  }
}
