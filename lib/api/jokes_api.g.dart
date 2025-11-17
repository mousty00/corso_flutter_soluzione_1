// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jokes_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(jokesApi)
const jokesApiProvider = JokesApiFamily._();

final class JokesApiProvider
    extends $FunctionalProvider<JokesApi, JokesApi, JokesApi>
    with $Provider<JokesApi> {
  const JokesApiProvider._({
    required JokesApiFamily super.from,
    required Dio super.argument,
  }) : super(
         retry: null,
         name: r'jokesApiProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$jokesApiHash();

  @override
  String toString() {
    return r'jokesApiProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<JokesApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  JokesApi create(Ref ref) {
    final argument = this.argument as Dio;
    return jokesApi(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(JokesApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<JokesApi>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is JokesApiProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$jokesApiHash() => r'd57cffe97288f227886d51d7a601159f0e763499';

final class JokesApiFamily extends $Family
    with $FunctionalFamilyOverride<JokesApi, Dio> {
  const JokesApiFamily._()
    : super(
        retry: null,
        name: r'jokesApiProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  JokesApiProvider call(Dio client) =>
      JokesApiProvider._(argument: client, from: this);

  @override
  String toString() => r'jokesApiProvider';
}
