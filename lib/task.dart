class Task {
  Task({required this.title, required this.description})
    : isDone = false,
      createdAt = DateTime.now(),
      updatedAt = DateTime.now();

  String title;
  String description;
  bool isDone;
  DateTime createdAt;
  DateTime updatedAt;
}
