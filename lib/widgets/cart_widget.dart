import "package:color_changer/models/cart_model.dart";
import "package:color_changer/models/product.dart";
import "package:color_changer/router.dart";
import "package:color_changer/state/cart.dart";
import "package:color_changer/widgets/alert_danger_widget.dart";
import "package:color_changer/widgets/delete_button_widget.dart";
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 36),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 40,
            children: [
              Text(
                "Cart",
                style: theme.textTheme.headlineLarge,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("${cart.totalItems} items"),
                  Text("Total: \$${cart.totalValue}"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          if (cart.isEmpty)
            Column(
              children: [
                const Text("No products yet."),
                TextButton(
                  onPressed: () async {
                    await router.push("/products");
                  },
                  child: const Text("add products"),
                ),
              ],
            )
          else
            Expanded(
              child: ListView(
                children: [
                  for (final entry in cart.entries)
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 16),
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          spacing: 8,
                          children: [
                            Text(
                              entry.displayProductAndAmount,
                              style: theme.textTheme.headlineSmall,
                            ),
                            Text(
                              entry.key.description,
                              style: theme.textTheme.bodyMedium,
                            ),
                            Text(
                              entry.displayPriceAndTotal,
                              style: theme.textTheme.bodyMedium,
                            ),
                            DeleteButtonWidget(
                              onPressed: () => deleteProductFromCart(entry.key),
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

  Future<void> goToProductDetail(Product product) async {
    await router.push("/${product.name}");
  }

  Future<void> deleteProductFromCart(Product product) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => const AlertDangerWidget(),
    );
    final shouldDelete = result ?? false;

    if (!shouldDelete) return;

    ref.read(cartProvider.notifier).removeProduct(product);

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("${product.name} removed from cart")),
    );
  }
}
