// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cat)
const catProvider = CatFamily._();

final class CatProvider
    extends
        $FunctionalProvider<
          AsyncValue<HttpCatApiModel>,
          HttpCatApiModel,
          FutureOr<HttpCatApiModel>
        >
    with $FutureModifier<HttpCatApiModel>, $FutureProvider<HttpCatApiModel> {
  const CatProvider._({
    required CatFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'catProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$catHash();

  @override
  String toString() {
    return r'catProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<HttpCatApiModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<HttpCatApiModel> create(Ref ref) {
    final argument = this.argument as int;
    return cat(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CatProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$catHash() => r'0fe1c0cb66af2c6d523dfc7206aa13fde9d00ce0';

final class CatFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<HttpCatApiModel>, int> {
  const CatFamily._()
    : super(
        retry: null,
        name: r'catProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CatProvider call(int status) => CatProvider._(argument: status, from: this);

  @override
  String toString() => r'catProvider';
}
