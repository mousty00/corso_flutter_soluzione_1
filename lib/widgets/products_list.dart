import "package:color_changer/models/product.dart";
import "package:color_changer/state/cart_controller.dart";
import "package:color_changer/state/products_controller.dart";
import "package:color_changer/widgets/alert_danger_widget.dart";
import "package:color_changer/widgets/delete_button_widget.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class ProductsList extends ConsumerStatefulWidget {
  const ProductsList({super.key});

  @override
  ConsumerState<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends ConsumerState<ProductsList> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final products = ref.watch(productsProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 36,
        horizontal: 36,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  "Products",
                  style: theme.textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              FloatingActionButton.small(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
            ],
          ),

          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                for (final product in products)
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            product.name,
                            style: theme.textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            product.description.isNotEmpty
                                ? product.description
                                : "No description",
                            style: theme.textTheme.bodyLarge,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "\$${product.price.toStringAsFixed(2)}",
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DeleteButtonWidget(
                                onPressed: () async {
                                  await deleteProduct(product);
                                },
                              ),
                              const SizedBox(width: 16),
                              FloatingActionButton.extended(
                                onPressed: () {
                                  addToCart(product);
                                },
                                label: const Text("Add to cart"),
                              ),
                            ],
                          ),
                        ],
                      ),
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

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("${product.name} added to the cart!"),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Future<void> deleteProduct(Product product) async {
    final shouldDelete = await showDialog<bool>(
      context: context,
      builder: (ctx) => const AlertDangerWidget(),
    );

    if (shouldDelete ?? false) {
      ref.read(productsProvider.notifier).removeProduct(product);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("${product.name} removed!"),
            duration: const Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }
}
