class ToDoItem {
  ToDoItem({
    required this.title,
    this.isDone = false,
  });

  final String title;
  final bool isDone;

  @override
  String toString() {
    return 'ToDoItem{title: $title, isDone: $isDone}';
  }
}
