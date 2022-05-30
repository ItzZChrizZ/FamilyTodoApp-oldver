class TodoField {
  static const createdTime = "Created Time";
}

class Todo {
  DateTime createdTime;
  String title;
  String description;
  String id;
  bool isDone;

  Todo({
    required this.createdTime,
    required this.title,
    this.description = "",
    required this.id,
    this.isDone = false,
  });
}
