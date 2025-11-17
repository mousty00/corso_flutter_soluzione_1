import "package:color_changer/models/cart_model.dart";
import "package:color_changer/models/product.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("CartViewModel", () {
    final cart = {
      Product(name: "Product 1", description: "Desc 1", price: 10): 2,
      Product(name: "Product 2", description: "Desc 2", price: 15): 3,
    };
    test("totalItems counts products and their amount", () {
      final totals = cart.totalItems;

      expect(totals, equals(5));
    });
    test("totalValue sums the prices of products by their amount", () {
      final value = cart.totalValue;

      expect(value, equals(65));
    });
  });
  group("CartItemViewModel", () {
    final entry = MapEntry(
      Product(name: "Product 1", description: "Desc 1", price: 10),
      3,
    );
    test("displayProductAndAmount shows the amount and product name", () {
      final display = entry.displayProductAndAmount;

      expect(display, equals("3 Product 1"));
    });
    test("totalPrice calculates price multiplied by amount", () {
      final totalPrice = entry.totalPrice;

      expect(totalPrice, equals(30));
    });
    test("displayPriceAndTotal shows price, amount and total price", () {
      final display = entry.displayPriceAndTotal;

      expect(display, equals(r"10.0 x 3 = $30.0"));
    });
  });
}
