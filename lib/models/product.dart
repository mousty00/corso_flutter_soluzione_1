class Product {
  Product({
    required this.name,
    required this.price,
    required this.description,
  }) : createdAt = DateTime.now();

  factory Product.fromJson(Map<String, Object?> json) {
    final name = json["name"]! as String;
    final price = json["price"]! as double;
    final description = json["description"]! as String;

    return Product(
      name: name,
      price: price,
      description: description,
    );
  }

  final String name;
  final double price;
  final String description;
  final DateTime createdAt;
}
