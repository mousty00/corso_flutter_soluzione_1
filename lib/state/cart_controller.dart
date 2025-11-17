import "package:color_changer/models/cart.dart";
import "package:color_changer/models/product.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

final cartProvider = NotifierProvider<CartNotifier, Cart>(CartNotifier.new);

class CartNotifier extends Notifier<Cart> {
  @override
  Cart build() {
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
