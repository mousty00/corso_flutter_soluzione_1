import "package:color_changer/models/product.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "products.g.dart";

@riverpod
class Products extends _$Products {
  @override
  List<Product> build() {
    return <Product>[
      Product(name: "Choco moons", price: 12.99, description: "Cereali"),
      Product(name: "Pizza Pix", price: 9.99, description: "Pizza surgelata"),
      Product(name: "Nutella", price: 4.99, description: ""),
      Product(name: "Kinder Sun", price: 2.99, description: "Barretta Proteica"),
    ];
  }

  void removeProduct(Product product) {
    state = [...state]..remove(product);
  }

  void clearProducts() {
    state = [];
  }

  void addProduct(Map<String, Object?> json) {
    final product = Product.fromJson(json);
    state = [...state, product];
  }

  void updateProduct(int index, Product updatedProduct) {
    state = [
      for (int i = 0; i < state.length; i++) i == index ? updatedProduct : state[i],
    ];
  }
}
