import "package:color_changer/widgets/todo_list.dart";
import "package:flutter/material.dart";

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.inversePrimary,
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: const TodoList(),
    );
  }
}
