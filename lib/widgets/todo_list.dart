import "package:color_changer/task.dart";
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
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 4,
          children: [
            Text("Aggiungi todo:", style: theme.textTheme.titleMedium),
            IconButton(
              onPressed: _showAddTaskForm,
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
                      setState(() {
                        tasks[i].isDone = value ?? false;
                      });
                    },
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _showAddTaskForm() async {
    final result = await showDialog<Task>(
      context: context,
      builder: (context) {
        return const TodoForm();
      },
    );
    if (result == null) return;

    setState(() {
      tasks.add(result);
    });
  }
}

class TodoForm extends StatefulWidget {
  const TodoForm({super.key});

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
        validators: [
          Validators.required,
          Validators.minLength(3),
        ],
      ),
      "description": FormControl<String>(
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
          horizontal: 40,
          vertical: 20,
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
