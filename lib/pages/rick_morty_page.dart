import "package:color_changer/router.dart";
import "package:color_changer/state/character.dart";
import "package:color_changer/widgets/image_shimmer.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class CharactersPage extends ConsumerStatefulWidget {
  const CharactersPage({super.key});

  @override
  ConsumerState<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends ConsumerState<CharactersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rick And morty"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          final page = index ~/ 10 + 1;
          final list = ref.watch(getCharactersProvider(page));

          switch (list) {
            case AsyncLoading():
              return const ImageShimmer();
            case AsyncData(:final value):
              final offset = index % 10;
              final character = value.results[offset];

              if (character.image case final url) {
                return InkWell(
                  onTap: () async {
                    await router.push("/characters/${character.id}");
                  },
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                  ),
                );
              }
            case AsyncError():
              return const Center(
                child: Text("uh-oh!"),
              );
          }
        },
      ),
    );
  }
}
