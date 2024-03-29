// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_split_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateSplitController on _CreateSplitController, Store {
  Computed<EventModel>? _$eventComputed;

  @override
  EventModel get event =>
      (_$eventComputed ??= Computed<EventModel>(() => super.event,
              name: '_CreateSplitController.event'))
          .value;
  Computed<bool>? _$enabledNavigateButtonComputed;

  @override
  bool get enabledNavigateButton => (_$enabledNavigateButtonComputed ??=
          Computed<bool>(() => super.enabledNavigateButton,
              name: '_CreateSplitController.enabledNavigateButton'))
      .value;
  Computed<bool>? _$isLastPageComputed;

  @override
  bool get isLastPage =>
      (_$isLastPageComputed ??= Computed<bool>(() => super.isLastPage,
              name: '_CreateSplitController.isLastPage'))
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

  final _$_eventAtom = Atom(name: '_CreateSplitController._event');

  @override
  EventModel get _event {
    _$_eventAtom.reportRead();
    return super._event;
  }

  @override
  set _event(EventModel value) {
    _$_eventAtom.reportWrite(value, super._event, () {
      super._event = value;
    });
  }

  final _$statusAtom = Atom(name: '_CreateSplitController.status');

  @override
  CreateSplitStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(CreateSplitStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$saveEventAsyncAction =
      AsyncAction('_CreateSplitController.saveEvent');

  @override
  Future<void> saveEvent() {
    return _$saveEventAsyncAction.run(() => super.saveEvent());
  }

  final _$_CreateSplitControllerActionController =
      ActionController(name: '_CreateSplitController');

  @override
  dynamic onChanged(
      {String? name, List<FriendModel>? friends, List<ItemModel>? items}) {
    final _$actionInfo = _$_CreateSplitControllerActionController.startAction(
        name: '_CreateSplitController.onChanged');
    try {
      return super.onChanged(name: name, friends: friends, items: items);
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
  String toString() {
    return '''
currentPage: ${currentPage},
status: ${status},
event: ${event},
enabledNavigateButton: ${enabledNavigateButton},
isLastPage: ${isLastPage}
    ''';
  }
}
