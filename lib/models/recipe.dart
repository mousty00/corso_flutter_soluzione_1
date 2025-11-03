class Recipe {
  Recipe({
    required this.name,
    required this.ingredients,
    required this.steps,
  }) : createdAt = DateTime.now(),
       updatedAt = DateTime.now();

  String name;
  List<String> ingredients;
  List<String> steps;
  DateTime updatedAt;
  final DateTime createdAt;
}
