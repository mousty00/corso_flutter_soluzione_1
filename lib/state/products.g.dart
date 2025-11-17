// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Products)
const productsProvider = ProductsProvider._();

final class ProductsProvider
    extends $NotifierProvider<Products, List<Product>> {
  const ProductsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productsHash();

  @$internal
  @override
  Products create() => Products();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Product> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Product>>(value),
    );
  }
}

String _$productsHash() => r'a7cd8da29e4c171b2b1c75ee6d542a58ba640538';

abstract class _$Products extends $Notifier<List<Product>> {
  List<Product> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Product>, List<Product>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Product>, List<Product>>,
              List<Product>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
