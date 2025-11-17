import "package:color_changer/models/product.dart";
import "package:color_changer/state/cart.dart";
import "package:color_changer/state/products.dart";
import "package:color_changer/widgets/alert_danger_widget.dart";
import "package:color_changer/widgets/delete_button_widget.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:reactive_forms/reactive_forms.dart";

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
              IconButton(
                onPressed: addNewProduct,
                icon: const Icon(Icons.add),
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

  Future<void> addNewProduct() async {
    final json = await showDialog<Map<String, Object?>>(
      context: context,
      builder: (context) {
        return const _AddProductDialog();
      },
    );
    if (json == null) return;

    ref.read(productsProvider.notifier).addProduct(json);
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
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => const AlertDangerWidget(),
    );
    final shouldDelete = result ?? false;

    if (!shouldDelete) return;
    ref.read(productsProvider.notifier).removeProduct(product);

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("${product.name} removed!"),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

class _AddProductDialog extends StatefulWidget {
  const _AddProductDialog();

  @override
  State<_AddProductDialog> createState() => _AddProductDialogState();
}

class _AddProductDialogState extends State<_AddProductDialog> {
  late final FormGroup form;

  @override
  void initState() {
    super.initState();
    form = FormGroup({
      "name": FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      "description": FormControl<String>(),
      "price": FormControl<double>(
        validators: [
          Validators.number(
            allowedDecimals: 2,
            allowNegatives: false,
          ),
          Validators.min(0.01),
          Validators.required,
        ],
      ),
    });
  }

  @override
  void dispose() {
    form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Add New Product"),
        ),
        body: ReactiveForm(
          formGroup: form,
          child: Column(
            children: [
              ReactiveTextField<String>(
                formControlName: "name",
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: theme.textTheme.bodyLarge,
                ),
              ),
              ReactiveTextField<String>(
                formControlName: "description",
                decoration: InputDecoration(
                  labelText: "Description",
                  labelStyle: theme.textTheme.bodyLarge,
                ),
              ),
              ReactiveTextField<double>(
                formControlName: "price",
                decoration: InputDecoration(
                  labelText: "Price",
                  labelStyle: theme.textTheme.bodyLarge,
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: onSave,
                icon: const Icon(Icons.save),
                label: const Text("save"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSave() {
    if (form.invalid) return;

    context.pop(form.value);
  }
}
