import "package:color_changer/models/fbi_wanted_model.dart";
import "package:color_changer/state/fbi_wanted_list.dart";
import "package:color_changer/widgets/image_shimmer.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class FbiPage extends ConsumerStatefulWidget {
  const FbiPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FbiPAgeState();
}

class _FbiPAgeState extends ConsumerState<FbiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FBI Wanted"),
      ),
      body: GridView.builder(
        padding: const .symmetric(horizontal: 32, vertical: 8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
        itemBuilder: (context, index) {
          final page = index ~/ fbiWantedListPageSize + 1;
          final list = ref.watch(fbiWantedListProvider(page));

          switch (list) {
            case AsyncLoading():
              return const ImageShimmer();
            case AsyncData(:final value):
              final offset = index % fbiWantedListPageSize;
              final wanted = value[offset];

              if (wanted.previewUrl case final url?) {
                return InkWell(
                  onTap: () => showDetailsOf(wanted),
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

          return null;
        },
      ),
    );
  }

  Future<void> showDetailsOf(FbiWantedModel wanted) async {
    await showDialog<void>(
      context: context,
      builder: (context) {
        return Dialog(
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: "altezza: "),
                    TextSpan(
                      text: wanted.displayHeight,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: "peso: "),
                    TextSpan(
                      text: wanted.displayWeight,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: "altezza: "),
                    TextSpan(
                      text: wanted.displayHeight,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text(
                wanted.displayDescription,
              ),
            ],
          ),
        );
      },
    );
  }
}
