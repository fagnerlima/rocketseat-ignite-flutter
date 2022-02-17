class CreateSplitController {
  String _eventName = '';

  set eventName(value) => _eventName = value;

  bool enabledNavigateButton() {
    return _eventName.isNotEmpty;
  }
}
