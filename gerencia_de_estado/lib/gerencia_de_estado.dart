abstract class GerenciaDeEstado<T> {
  late T _state;
  List<void Function(T state)> _listeners = [];

  GerenciaDeEstado({ required T initialState }) {
    this._state = initialState;
  }

  get state => _state;

  void setState(T state) {
    _state = state;
    _listeners.forEach((listen) => listen(state));
  }

  void listen(void Function(T state) onUpdate) {
    _listeners.add(onUpdate);
  }
}
