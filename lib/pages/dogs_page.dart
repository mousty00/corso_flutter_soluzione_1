import "package:color_changer/state/dog.dart";
import "package:color_changer/widgets/image_shimmer.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class DogsPage extends ConsumerStatefulWidget {
  const DogsPage({super.key});

  @override
  ConsumerState<DogsPage> createState() => _DogsPageState();
}

class _DogsPageState extends ConsumerState<DogsPage> {
  String? dogType;

  @override
  Widget build(BuildContext context) {
    final dogs = ref.watch(dogImagesProvider(dogType));
    return Scaffold(
      appBar: AppBar(
        title: const Text("dogs"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            textInputAction: TextInputAction.done,
            onSubmitted: (value) {
              setState(() {
                dogType = value;
              });
            },
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                switch (dogs) {
                  case AsyncLoading():
                    return const ImageShimmer();

                  case AsyncData(:final value):
                    return InkWell(
                      onTap: () => {showDetailsOf(value.message[index])},
                      child: Image.network(
                        value.message[index],
                        fit: BoxFit.cover,
                      ),
                    );

                  case AsyncError():
                    return const Center(
                      child: Text("uh-oh!"),
                    );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showDetailsOf(String image) async {
    await showDialog<void>(
      context: context,
      builder: (context) {
        return Dialog(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [Image.network(image)],
          ),
        );
      },
    );
  }
}
