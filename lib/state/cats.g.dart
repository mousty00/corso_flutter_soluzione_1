// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cats.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cats)
const catsProvider = CatsProvider._();

final class CatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<HttpStatusApiModel>>,
          List<HttpStatusApiModel>,
          FutureOr<List<HttpStatusApiModel>>
        >
    with
        $FutureModifier<List<HttpStatusApiModel>>,
        $FutureProvider<List<HttpStatusApiModel>> {
  const CatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catsHash();

  @$internal
  @override
  $FutureProviderElement<List<HttpStatusApiModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HttpStatusApiModel>> create(Ref ref) {
    return cats(ref);
  }
}

String _$catsHash() => r'b7aa0c7301c86e07bb0d316541ec059941175f6d';
