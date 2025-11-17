import "package:json_annotation/json_annotation.dart";

part "product.g.dart";

@JsonSerializable(createToJson: false)
class Product {
  Product({
    required this.name,
    required this.price,
    required this.description,
  }) : createdAt = DateTime.now();

  factory Product.fromJson(Map<String, Object?> json) {
    return _$ProductFromJson(json);
  }

  final String name;
  final double price;
  final String description;
  final DateTime createdAt;
}
