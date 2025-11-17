import "package:color_changer/models/cart.dart";
import "package:color_changer/models/product.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

final cartProvider = NotifierProvider<CartNotifier, Cart>(CartNotifier.new);

class CartNotifier extends Notifier<Cart> {
  @override
  Cart build() {
    return Cart(products: []);
  }

  void addProduct(Product product) {
    final updatedProducts = List<Product>.from(state.products)..add(product);
    state = Cart(products: updatedProducts);
  }

  void removeProduct(Product product) {
    final updatedProducts = List<Product>.from(state.products)..remove(product);
    state = Cart(products: updatedProducts);
  }

  void clearCart() {
    state = Cart(products: []);
  }
}
