import "package:color_changer/models/cart_model.dart";
import "package:color_changer/models/product.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "cart.g.dart";

@riverpod
class Cart extends _$Cart {
  @override
  CartModel build() {
    return {};
  }

  void addProduct(Product product) {
    state.update(
      product,
      (value) => value + 1,
      ifAbsent: () => 1,
    );
    ref.notifyListeners();
  }

  void removeProduct(Product product) {
    state.remove(product);
    ref.notifyListeners();
  }

  void clearCart() {
    state.clear();
    ref.notifyListeners();
  }
}
