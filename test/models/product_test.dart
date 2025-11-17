import "package:color_changer/models/product.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("Product", () {
    test(".fromJson works with a validated input", () {
      final json = {
        "name": "Test Product",
        "price": 19.99,
        "description": "A product for testing",
      };

      final product = Product.fromJson(json);

      expect(product.name, "Test Product");
      expect(product.price, 19.99);
      expect(product.description, "A product for testing");
    });
  });
}
