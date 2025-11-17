class Product {
  Product({
    required this.name,
    required this.price,
    required this.description,
  }) : createdAt = DateTime.now();
  final String name;
  final double price;
  final String description;
  final DateTime createdAt;
}
