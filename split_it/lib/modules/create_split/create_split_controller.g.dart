// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_split_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateSplitController on _CreateSplitController, Store {
  Computed<bool>? _$enabledNavigateButtonComputed;

  @override
  bool get enabledNavigateButton => (_$enabledNavigateButtonComputed ??=
          Computed<bool>(() => super.enabledNavigateButton,
              name: '_CreateSplitController.enabledNavigateButton'))
      .value;

  final _$currentPageAtom = Atom(name: '_CreateSplitController.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$_eventNameAtom = Atom(name: '_CreateSplitController._eventName');

  @override
  String get _eventName {
    _$_eventNameAtom.reportRead();
    return super._eventName;
  }

  @override
  set _eventName(String value) {
    _$_eventNameAtom.reportWrite(value, super._eventName, () {
      super._eventName = value;
    });
  }

  final _$_selectedFriendsAtom =
      Atom(name: '_CreateSplitController._selectedFriends');

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

  final _$_itemsAtom = Atom(name: '_CreateSplitController._items');

  @override
  List<ItemModel> get _items {
    _$_itemsAtom.reportRead();
    return super._items;
  }

  @override
  set _items(List<ItemModel> value) {
    _$_itemsAtom.reportWrite(value, super._items, () {
      super._items = value;
    });
  }

  final _$_CreateSplitControllerActionController =
      ActionController(name: '_CreateSplitController');

  @override
  dynamic setEventName(dynamic value) {
    final _$actionInfo = _$_CreateSplitControllerActionController.startAction(
        name: '_CreateSplitController.setEventName');
    try {
      return super.setEventName(value);
    } finally {
      _$_CreateSplitControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic backPage() {
    final _$actionInfo = _$_CreateSplitControllerActionController.startAction(
        name: '_CreateSplitController.backPage');
    try {
      return super.backPage();
    } finally {
      _$_CreateSplitControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic nextPage() {
    final _$actionInfo = _$_CreateSplitControllerActionController.startAction(
        name: '_CreateSplitController.nextPage');
    try {
      return super.nextPage();
    } finally {
      _$_CreateSplitControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedFriends(List<FriendModel> value) {
    final _$actionInfo = _$_CreateSplitControllerActionController.startAction(
        name: '_CreateSplitController.setSelectedFriends');
    try {
      return super.setSelectedFriends(value);
    } finally {
      _$_CreateSplitControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setItems(List<ItemModel> value) {
    final _$actionInfo = _$_CreateSplitControllerActionController.startAction(
        name: '_CreateSplitController.setItems');
    try {
      return super.setItems(value);
    } finally {
      _$_CreateSplitControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
enabledNavigateButton: ${enabledNavigateButton}
    ''';
  }
}
