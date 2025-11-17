import "package:color_changer/state/cart_controller.dart";
import "package:color_changer/widgets/products_list.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        actions: [
          Consumer(
            builder: (context, ref, child) {
              return Badge.count(
                count: ref.watch(cartProvider).products.length,
                child: IconButton(
                  onPressed: goToCart,
                  icon: const Icon(Icons.shopping_bag_rounded),
                ),
              );
            },
          ),
        ],
      ),
      body: const ProductsList(),
    );
  }

  Future<void> goToCart() async {
    await context.push("/cart");
  }
}
