import "package:color_changer/state/theme_controller.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class ColorChangePage extends ConsumerWidget {
  const ColorChangePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = ref.watch(darkModeProvider);

    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: const Text("Color changer"),
        actions: [
          Switch(
            value: brightness == Brightness.dark,
            onChanged: (value) {
              ref.read(darkModeProvider.notifier).toggle(isDark: value);
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: OutlinedButton.icon(
              onPressed: () {
                ref.read(colorProvider.notifier).randomize();
              },
              icon: const Icon(Icons.shuffle),
              label: const Text("randomize me"),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(colorProvider.notifier).setToRed();
                },
                child: const Text("Red"),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(colorProvider.notifier).setToGreen();
                },
                child: const Text("Green"),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(colorProvider.notifier).setToBlue();
                },
                child: const Text("Blue"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
