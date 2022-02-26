import 'package:ignite_flutter_todo_list/controller/gerencia_de_estado_controller.dart';
import 'package:ignite_flutter_todo_list/shared/models/todo_item.dart';

class HomeState {
  final List<ToDoItem> toDoItemList = [];
  final List<ToDoItem> doneItemList = [];
}

class HomeController extends GerenciaDeEstado<HomeState> {
  HomeController() : super(initialState: HomeState());

  void onAddItem(String itemTitle) {
    print('add: $itemTitle');
    state.toDoItemList.add(ToDoItem(title: itemTitle));
    setState(state);
  }

  void onResetItem(ToDoItem item) {
    print('reset: $item');
    state.doneItemList.remove(item);
    state.toDoItemList.add(ToDoItem(title: item.title));
    setState(state);
  }

  void onRemoveToDoItem(ToDoItem item) {
    print('removeToDo: $item');
    state.toDoItemList.remove(item);
    setState(state);
  }

  void onRemoveDoneItem(ToDoItem item) {
    print('removeDone: $item');
    state.doneItemList.remove(item);
    setState(state);
  }

  void onCompleteItem(ToDoItem item) {
    print('complete removeToDo: $item');
    print('complete addDone: ${item.title}');
    state.toDoItemList.remove(item);
    state.doneItemList.add(ToDoItem(
      title: item.title,
      isDone: true,
    ));
    setState(state);
  }
}
