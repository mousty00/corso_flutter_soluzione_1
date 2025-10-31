import 'package:flutter/material.dart';

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

class TodoIdea extends StatefulWidget {
  const TodoIdea({super.key});

  @override
  State<TodoIdea> createState() => _TodoIdeaState();
}

class _TodoIdeaState extends State<TodoIdea> {
  final list = <Task>[];

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  void _addTask() {
    // .......
    final value = {"title": "ahusinhdanhdsa"};
    final newTask = Task(
      title: value["title"] as String,
      description: value["description"] as String,
    );
  }
}
