import "dart:async";

import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class RouteButton extends StatefulWidget {
  const RouteButton({required this.path, required this.label, super.key});

  final String path;
  final String label;

  @override
  _RouteButtonState createState() => _RouteButtonState();
}

class _RouteButtonState extends State<RouteButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        unawaited(context.push(widget.path));
      },
      child: Card(
        margin: const EdgeInsets.all(4),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(
              widget.label,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
