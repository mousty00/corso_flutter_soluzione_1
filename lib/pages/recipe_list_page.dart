import "package:color_changer/widgets/recipe_list.dart";
import "package:flutter/material.dart";

class RecipeListPage extends StatelessWidget {
  const RecipeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
        backgroundColor: theme.colorScheme.inversePrimary,
      ),
      body: const RecipeList(),
    );
  }
}
