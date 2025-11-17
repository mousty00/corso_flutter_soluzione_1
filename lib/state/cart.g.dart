// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Cart)
const cartProvider = CartProvider._();

final class CartProvider extends $NotifierProvider<Cart, CartModel> {
  const CartProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartHash();

  @$internal
  @override
  Cart create() => Cart();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartModel>(value),
    );
  }
}

String _$cartHash() => r'c71a85f1de086e0f8c415e0c1f3abaa05cf8e4b3';

abstract class _$Cart extends $Notifier<CartModel> {
  CartModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CartModel, CartModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CartModel, CartModel>,
              CartModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
