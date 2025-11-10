import "package:color_changer/enum/eroute.dart";
import "package:color_changer/widgets/route_button.dart";
import "package:flutter/material.dart";

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
            for (final route in ERoute.routes)
              RouteButton(path: route.path, label: route.label),
          ],
        ),
      ),
    );
  }
}
