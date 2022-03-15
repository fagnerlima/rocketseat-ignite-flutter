// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_split_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateSplitController on _CreateSplitController, Store {
  Computed<bool>? _$disabledNavigateButtonComputed;

  @override
  bool get disabledNavigateButton => (_$disabledNavigateButtonComputed ??=
          Computed<bool>(() => super.disabledNavigateButton,
              name: '_CreateSplitController.disabledNavigateButton'))
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
  String toString() {
    return '''
currentPage: ${currentPage},
disabledNavigateButton: ${disabledNavigateButton}
    ''';
  }
}
