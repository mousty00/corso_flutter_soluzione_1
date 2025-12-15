import "package:color_changer/api/models/character_api_model.dart";
import "package:color_changer/state/character.dart";
import "package:color_changer/state/review.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:reactive_forms/reactive_forms.dart";

class CharacterPage extends ConsumerStatefulWidget {
  const CharacterPage({
    required this.id,
    super.key,
  });
  final int id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CharacterPageState();
}

class _CharacterPageState extends ConsumerState<CharacterPage> {
  @override
  Widget build(BuildContext context) {
    final character = ref.watch(getCharacterProvider(widget.id));
    final reviews = ref.watch(reviewProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Center(
        child: Column(
          children: [
            if (character case AsyncValue(:final value?)) ...[
              const SizedBox(height: 16),
              Image.network(value.image),
              const SizedBox(height: 32),
              const Text(
                "Info: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text("Name: ${value.name}"),
                  Text("Status: ${value.status}"),
                  Text("gender: ${value.gender}"),
                  Text("species: ${value.species}"),
                ],
              ),
              const SizedBox(height: 32),
              Text(
                "${value.name} is in ${value.episode.length} Episodes",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                onPressed: () {
                  showReviewDialog(value);
                },
                label: const Text("add a review"),
                icon: const Icon(Icons.add),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Future<void> showReviewDialog(Character value) async {
    final result = await showDialog<Map<String, Object?>>(
      context: context,
      builder: (context) {
        return ReviewForm(character: value);
      },
    );

    if (result == null) return;

    ref.read(reviewProvider.notifier).addReview(value, result);
  }
}

class ReviewForm extends StatefulWidget {
  const ReviewForm({
    required this.character,
    super.key,
  });

  final Character character;

  @override
  State<ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  late final FormGroup form;

  @override
  void initState() {
    super.initState();
    form = FormGroup({
      "rating": FormControl<int>(
        validators: [
          Validators.required,
          Validators.number(),
        ],
      ),
      "comment": FormControl<String>(validators: [Validators.maxLength(100)]),
    });
  }

  @override
  void dispose() {
    form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add Review"),
      content: ReactiveForm(
        formGroup: form,
        child: Column(
          mainAxisAlignment: .center,
          children: [
            ReactiveTextField<int>(
              formControlName: "rating",
              decoration: const InputDecoration(
                labelText: "Rating",
                icon: Icon(Icons.star),
              ),
              textInputAction: .next,
            ),
            ReactiveTextField<String>(
              formControlName: "comment",
              decoration: const InputDecoration(
                labelText: "comment",
                icon: Icon(Icons.text_fields),
              ),
              textInputAction: .done,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: save,
          child: const Text("Save"),
        ),
      ],
    );
  }

  void save() {
    if (form.valid) {
      context.pop(form.value);
    }
  }
}
