import "package:collection/collection.dart";
import "package:color_changer/state/cart.dart";
import "package:color_changer/widgets/products_list.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        actions: [
          Consumer(
            builder: (context, ref, child) {
              final cart = ref.watch(cartProvider);

              return Badge.count(
                count: cart.entries.map((e) => e.value).sum,
                child: IconButton(
                  onPressed: () async {
                    await context.push("/cart");
                  },
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
}
