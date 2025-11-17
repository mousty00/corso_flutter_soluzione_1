import "package:flutter/material.dart";

class DeleteButtonWidget extends StatelessWidget {
  const DeleteButtonWidget({required this.onPressed, super.key});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      label: const Text("delete"),
      icon: const Icon(Icons.delete),
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
    );
  }
}
