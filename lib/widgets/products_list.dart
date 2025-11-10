import "package:color_changer/models/product.dart";
import "package:color_changer/state/cart_controller.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class ProductsList extends ConsumerStatefulWidget {
  const ProductsList({super.key});

  @override
  ConsumerState<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends ConsumerState<ProductsList> {
  final List<Product> products = [
    Product(name: "Choco moons", price: 12.99, description: "Cereali"),
    Product(name: "Pizza Pix", price: 9.99, description: "Pizza surgelata"),
    Product(name: "Nutella", price: 4.99, description: ""),
    Product(name: "Kinder Sun", price: 2.99, description: "Barretta Proteica"),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cart = ref.watch(cartProvider);
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(vertical: 36, horizontal: 36),
      child: Column(
        spacing: 20,
        children: [
          Text(
            "Products",
            style: theme.textTheme.headlineLarge,
          ),
          Expanded(
            child: ListView(
              children: [
                for (final product in products)
                  Card(
                    child: Column(
                      spacing: 20,
                      children: [
                        Text(
                          product.name,
                          style: theme.textTheme.headlineSmall,
                        ),
                        Text(
                          product.name,
                          style: theme.textTheme.bodyLarge,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            addToCart(product);
                          },
                          label: const Text("Add to cart"),
                          icon: const Icon(Icons.shop_rounded),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void addToCart(Product product) {
    ref.read(cartProvider.notifier).addProduct(product);
  }
}
