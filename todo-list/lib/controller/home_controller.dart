import 'package:ignite_flutter_todo_list/gerencia-de-estado/gerencia_de_estado.dart';
import 'package:ignite_flutter_todo_list/shared/models/todo_item.dart';

class HomeState {
  final List<ToDoItem> toDoItemList = [];
  final List<ToDoItem> doneItemList = [];
}

class HomeController extends GerenciaDeEstado<HomeState> {
  HomeController() : super(initialState: HomeState());

  void onAddItem(String itemTitle) {
    state.toDoItemList.add(ToDoItem(title: itemTitle));
    setState(state);
  }

  void onResetItem(ToDoItem item) {
    state.doneItemList.remove(item);
    state.toDoItemList.add(ToDoItem(title: item.title));
    setState(state);
  }

  void onRemoveToDoItem(ToDoItem item) {
    state.toDoItemList.remove(item);
    setState(state);
  }

  void onRemoveDoneItem(ToDoItem item) {
    state.doneItemList.remove(item);
    setState(state);
  }

  void onCompleteItem(ToDoItem item) {
    state.toDoItemList.remove(item);
    state.doneItemList.add(ToDoItem(
      title: item.title,
      isDone: true,
    ));
    setState(state);
  }
}
