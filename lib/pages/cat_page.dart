import "package:color_changer/state/cat.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class CatPage extends ConsumerStatefulWidget {
  const CatPage({
    required this.status,
    super.key,
  });
  final int status;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CatPageState();
}

class _CatPageState extends ConsumerState<CatPage> {
  @override
  Widget build(BuildContext context) {
    final cat = ref.watch(catProvider(widget.status));

    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP ${widget.status}"),
      ),
      body: Column(
        children: [
          if (cat case AsyncValue(:final value?)) ...[
            Text("Status: ${value.statusCode}"),
            const SizedBox(height: 16),
            Image.network(value.imageUrl),
          ],
        ],
      ),
    );
  }
}
