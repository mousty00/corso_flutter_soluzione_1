import "dart:async";

import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.inversePrimary,
      body: Padding(
        padding: const EdgeInsetsGeometry.symmetric(
          horizontal: 20,
          vertical: 64,
        ),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: [
            InkWell(
              onTap: () {
                unawaited(context.push("/todos"));
              },
              child: const Card(
                margin: EdgeInsets.all(4),
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Center(
                    child: Text(
                      "TODO LIST",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                unawaited(context.push("/color-changer"));
              },
              child: const Card(
                margin: EdgeInsets.all(4),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "COLOR CHANGER",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                unawaited(context.push("/login"));
              },
              child: const Card(
                margin: EdgeInsets.all(4),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "LOGIN FORM",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
