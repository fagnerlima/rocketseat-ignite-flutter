class CreateSplitController {
  String _eventName = '';

  set eventName(value) => _eventName = value;

  bool disabledNavigateButton() {
    return _eventName.isEmpty;
  }
}
