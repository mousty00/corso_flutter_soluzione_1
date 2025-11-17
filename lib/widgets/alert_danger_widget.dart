import "package:flutter/material.dart";

class AlertDangerWidget extends StatelessWidget {
  const AlertDangerWidget({
    this.dangerActionText,
    this.text,
    this.title,
    this.nullableActionText,
    super.key,
  });

  final String? title;
  final String? text;
  final String? dangerActionText;
  final String? nullableActionText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      title: Text(title ?? "Are you sure?"),
      content: Text(text ?? "that you want to delete it"),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(nullableActionText == null ? "No" : nullableActionText!),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(true),
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.error,
            foregroundColor: Colors.white,
          ),
          child: Text(dangerActionText ?? "yes, delete it"),
        ),
      ],
    );
  }
}
