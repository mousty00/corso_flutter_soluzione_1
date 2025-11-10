import "package:color_changer/state/cart_controller.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class CartWidget extends ConsumerStatefulWidget {
  const CartWidget({super.key});

  @override
  ConsumerState<CartWidget> createState() => _CartState();
}

class _CartState extends ConsumerState<CartWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cart = ref.watch(cartProvider);
    return Column(
      children: [
        Text(
          "Cart",
          style: theme.textTheme.headlineLarge,
        ),
        Expanded(
          child: ListView(
            children: [
              for (final (index, product) in cart.products.indexed)
                Card(
                  child: Column(
                    children: [
                      Text(
                        product.name,
                        style: theme.textTheme.headlineSmall,
                      ),
                      Text(
                        product.description,
                        style: theme.textTheme.bodyMedium,
                      ),
                      Text(
                        "${product.price}",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
