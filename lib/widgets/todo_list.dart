import "package:color_changer/models/task.dart";
import "package:flutter/material.dart";
import "package:reactive_forms/reactive_forms.dart";

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<Task> tasks = [
    Task(title: "Task 1", description: "Description for Task 1"),
    Task(title: "Task 2", description: "Description for Task 2"),
    Task(title: "Task 3", description: "Description for Task 3"),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      spacing: 4,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 4,
          children: [
            ElevatedButton.icon(
              onPressed: _showAddTaskForm,
              label: Text("Add New", style: theme.textTheme.titleMedium),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            children: [
              for (final (i, task) in tasks.indexed)
                ListTile(
                  title: Text(task.title),
                  subtitle: Text(task.description),
                  leading: Checkbox(
                    value: task.isDone,
                    onChanged: (value) {
                      _toggle(i, to: value);
                    },
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          _changeTodo(task);
                        },
                        icon: const Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          _deleteTodo(i);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  void _deleteTodo(int i) {
    setState(() {
      tasks.removeAt(i);
    });
  }

  Future<void> _showAddTaskForm() async {
    final result = await showDialog<Task>(
      context: context,
      builder: (context) {
        return const TodoForm(
          label: "add task",
          task: null,
        );
      },
    );
    if (result == null) return;

    setState(() {
      tasks.add(result);
    });
  }

  void _toggle(int i, {bool? to}) {
    setState(() {
      tasks[i].isDone = to ?? false;
    });
  }

  Future<void> _changeTodo(Task task) async {
    final result = await showDialog<Task>(
      context: context,
      builder: (context) {
        return TodoForm(
          label: "edit!",
          task: task,
        );
      },
    );

    if (result == null) return;

    setState(() {
      task.title = result.title;
      task.description = result.description;
    });
  }
}

class TodoForm extends StatefulWidget {
  const TodoForm({
    required this.label,
    required this.task,
    super.key,
  });
  final String label;
  final Task? task;

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  late final FormGroup form;

  @override
  void initState() {
    super.initState();
    form = FormGroup({
      "title": FormControl<String>(
        value: widget.task?.title,
        validators: [
          Validators.required,
          Validators.minLength(3),
        ],
      ),
      "description": FormControl<String>(
        value: widget.task?.description,
        validators: [
          Validators.required,
        ],
      ),
    });
  }

  @override
  void dispose() {
    form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsetsGeometry.symmetric(
          horizontal: 60,
          vertical: 60,
        ),
        child: ReactiveForm(
          formGroup: form,
          child: Column(
            children: [
              ReactiveTextField<String>(
                formControlName: "title",
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: "Title",
                  hintText: "Enter task title...",
                ),
              ),
              ReactiveTextField<String>(
                formControlName: "description",
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: "Description",
                  hintText: "Enter task description...",
                ),
                onSubmitted: (control) {
                  save();
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: save,
                child: const Text("Add Task"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void save() {
    if (!form.valid) return;
    final value = form.value;

    final newTask = Task(
      title: value["title"]! as String,
      description: value["description"]! as String,
    );

    Navigator.of(context).pop(newTask);
  }
}
