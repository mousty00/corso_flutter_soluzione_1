import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

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
    final theme = Theme.of(context);

    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      title: Text(title ?? "Are you sure?"),
      content: Text(text ?? "that you want to delete it"),
      actions: [
        TextButton(
          onPressed: () {
            context.pop(false);
          },
          child: Text(nullableActionText == null ? "No" : nullableActionText!),
        ),
        ElevatedButton(
          onPressed: () {
            context.pop(true);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.error,
            foregroundColor: Colors.white,
          ),
          child: Text(dangerActionText ?? "yes, delete it"),
        ),
      ],
    );
  }
}
