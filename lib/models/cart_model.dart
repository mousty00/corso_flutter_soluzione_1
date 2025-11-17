import "package:collection/collection.dart";
import "package:color_changer/models/product.dart";

typedef CartModel = Map<Product, int>;

extension CartViewModel on CartModel {
  int get totalItems {
    return entries.map((e) => e.value).sum;
  }

  double get totalValue {
    return entries.map((e) => e.totalPrice).sum;
  }
}

extension CartItemViewModel on MapEntry<Product, int> {
  String get displayProductAndAmount {
    return "$value ${key.name}";
  }

  String get displayPriceAndTotal {
    return "${key.price} x $value = \$$totalPrice";
  }

  double get totalPrice {
    return key.price * value;
  }
}
