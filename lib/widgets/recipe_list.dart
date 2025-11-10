import "package:color_changer/models/recipe.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:reactive_forms/reactive_forms.dart";

class RecipeList extends StatefulWidget {
  const RecipeList({super.key});

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  List<Recipe> recipes = [
    Recipe(
      name: "pasta ragù",
      ingredients: ["tomatoes", "salt", "olive oil", "spaghetti"],
      steps: [
        "boil water for 5 minutes",
        "put just a bit of salt",
        "wait till the water is boiled",
        "put the spaghetti in it",
        "wait for 5 minutes",
        "mix every 2 minutes",
        "wait till it's done",
        "put the spaghetti in the colander",
        "wait till it's drained",
        "put the spaghetti back in the pot",
        "put some olive oil in it",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 40,
      children: [
        ElevatedButton.icon(
          onPressed: add,
          label: const Text("Add New"),
        ),
        const Text("recipe list"),
        Expanded(
          child: ListView(
            children: [
              for (final recipe in recipes)
                Card(
                  margin: const EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 4,
                      children: [
                        Text(
                          recipe.name,
                          style: theme.textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ingredients list:",
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                for (final (i, ingredient) in recipe.ingredients.indexed)
                                  Text(
                                    "${i + 1} - $ingredient",
                                    textAlign: TextAlign.start,
                                  ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "steps list:",
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                for (final (i, step) in recipe.steps.indexed)
                                  Text(
                                    "${i + 1} - $step",
                                    textAlign: TextAlign.start,
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> add() async {
    final form = await showDialog<Map<String, Object?>>(
      context: context,
      builder: (context) {
        return const AddRecipeDialog();
      },
    );
    print(form);

    if (form == null) return;

    final ingredients = form["ingredients"]! as List<String?>;
    final assertIngredients = ingredients.map((v) => v!).toList();
    final steps = form["steps"]! as List<String?>;
    final assertSteps = steps.map((v) => v!).toList();

    setState(() {
      recipes.add(
        Recipe(
          name: form["name"]! as String,
          ingredients: assertIngredients,
          steps: assertSteps,
        ),
      );
    });
  }
}

class AddRecipeDialog extends StatefulWidget {
  const AddRecipeDialog({
    super.key,
  });

  @override
  State<AddRecipeDialog> createState() => _AddRecipeDialogState();
}

class _AddRecipeDialogState extends State<AddRecipeDialog> {
  late final FormGroup form;

  @override
  void initState() {
    super.initState();
    form = FormGroup({
      "name": FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(2),
        ],
      ),
      "ingredients": FormArray<String>(
        [],
        validators: [
          Validators.minLength(2),
        ],
      ),
      "steps": FormArray<String>(
        [],
        validators: [
          Validators.minLength(1),
        ],
      ),
    });
  }

  @override
  void dispose() {
    form.dispose();
    super.dispose();
  }

  FormArray<String> get ingredients {
    return form.control("ingredients") as FormArray<String>;
  }

  FormArray<String> get steps {
    return form.control("steps") as FormArray<String>;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ReactiveForm(
        formGroup: form,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReactiveTextField<String>(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(icon: Icon(Icons.food_bank_outlined)),
              formControlName: "name",
            ),
            TextButton(
              onPressed: _addIngredients,
              child: const Text("Add ingredient"),
            ),
            for (final ingredient in ingredients.controls)
              ReactiveTextField(
                formControl: ingredient as FormControl<String>,
              ),
            TextButton(
              onPressed: _addSteps,
              child: const Text("add Steps"),
            ),
            for (final step in steps.controls)
              ReactiveTextField(
                formControl: step as FormControl<String>,
              ),
            ReactiveFormConsumer(
              builder: (context, formGroup, child) {
                return ElevatedButton.icon(
                  onPressed: formGroup.invalid ? null : _saveRecipe,
                  label: const Text("Save"),
                  icon: const Icon(Icons.save),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _addIngredients() {
    setState(() {
      ingredients.add(FormControl<String>(validators: [Validators.required]));
    });
  }

  void _addSteps() {
    setState(() {
      steps.add(FormControl<String>(validators: [Validators.required]));
    });
  }

  void _saveRecipe() {
    if (form.invalid) return;

    context.pop(form.value);
  }
}
