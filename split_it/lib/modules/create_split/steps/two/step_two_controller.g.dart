// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_two_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StepTwoController on StepTwoControllerBase, Store {
  final _$friendsAtom = Atom(name: 'StepTwoControllerBase.friends');

  @override
  List<FriendModel> get friends {
    _$friendsAtom.reportRead();
    return super.friends;
  }

  @override
  set friends(List<FriendModel> value) {
    _$friendsAtom.reportWrite(value, super.friends, () {
      super.friends = value;
    });
  }

  final _$getFriendsAsyncAction =
      AsyncAction('StepTwoControllerBase.getFriends');

  @override
  Future<void> getFriends(String search) {
    return _$getFriendsAsyncAction.run(() => super.getFriends(search));
  }

  @override
  String toString() {
    return '''
friends: ${friends}
    ''';
  }
}
