import "package:color_changer/models/cart.dart";
import "package:color_changer/models/product.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

final NotifierProvider<CartNotifier, Cart> cartProvider =
    NotifierProvider.autoDispose<CartNotifier, Cart>(CartNotifier.new);

class CartNotifier extends Notifier<Cart> {
  @override
  Cart build() {
    return Cart(products: []);
  }

  void addProduct(Product product) {
    state.products.add(product);
    ref.notifyListeners();
  }
}
