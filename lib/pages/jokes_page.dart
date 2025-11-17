import "package:color_changer/state/random_joke.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class JokesPage extends ConsumerStatefulWidget {
  const JokesPage({super.key});

  @override
  ConsumerState<JokesPage> createState() => _JokesPageState();
}

class _JokesPageState extends ConsumerState<JokesPage> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    final joke = ref.watch(randomJokeProvider);

    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: theme.colorScheme.inversePrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 20,
        children: [
          switch (joke) {
            AsyncValue(isLoading: false, hasError: false, :final value?) => Text(
              value.setup,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineMedium,
            ),
            AsyncValue(isLoading: false, hasError: true) => const Center(
              child: Text("woops, c'è stato un problema!"),
            ),
            _ => Center(
              child: CircularProgressIndicator(
                color: theme.colorScheme.onInverseSurface,
              ),
            ),
          },
          if (show && !joke.isLoading)
            Text(
              "${joke.value?.punchline}",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
          if (!show && !joke.hasError && !joke.isLoading)
            TextButton.icon(
              onPressed: showJoke,
              label: const Text("show!"),
            ),
          if (show || joke.hasError)
            TextButton.icon(
              onPressed: anotherJoke,
              label: const Text("again!"),
            ),
        ],
      ),
    );
  }

  void showJoke() {
    setState(() {
      show = true;
    });
  }

  void anotherJoke() {
    setState(() {
      ref.invalidate(randomJokeProvider);
      show = false;
    });
  }
}
