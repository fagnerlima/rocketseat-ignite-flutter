// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_two_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StepTwoController on StepTwoControllerBase, Store {
  Computed<Future<List<FriendModel>?>>? _$friendsComputed;

  @override
  Future<List<FriendModel>?> get friends => (_$friendsComputed ??=
          Computed<Future<List<FriendModel>?>>(() => super.friends,
              name: 'StepTwoControllerBase.friends'))
      .value;

  final _$searchAtom = Atom(name: 'StepTwoControllerBase.search');

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$StepTwoControllerBaseActionController =
      ActionController(name: 'StepTwoControllerBase');

  @override
  dynamic change(String value) {
    final _$actionInfo = _$StepTwoControllerBaseActionController.startAction(
        name: 'StepTwoControllerBase.change');
    try {
      return super.change(value);
    } finally {
      _$StepTwoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
search: ${search},
friends: ${friends}
    ''';
  }
}
