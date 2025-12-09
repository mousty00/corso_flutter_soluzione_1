// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dogImages)
const dogImagesProvider = DogImagesFamily._();

final class DogImagesProvider
    extends
        $FunctionalProvider<AsyncValue<DogModel>, DogModel, FutureOr<DogModel>>
    with $FutureModifier<DogModel>, $FutureProvider<DogModel> {
  const DogImagesProvider._({
    required DogImagesFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'dogImagesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$dogImagesHash();

  @override
  String toString() {
    return r'dogImagesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<DogModel> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<DogModel> create(Ref ref) {
    final argument = this.argument as String?;
    return dogImages(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DogImagesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$dogImagesHash() => r'fa169ccbf63202febb45e1e117c80997583aad48';

final class DogImagesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DogModel>, String?> {
  const DogImagesFamily._()
    : super(
        retry: null,
        name: r'dogImagesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DogImagesProvider call(String? q) =>
      DogImagesProvider._(argument: q, from: this);

  @override
  String toString() => r'dogImagesProvider';
}
