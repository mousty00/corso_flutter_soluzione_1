// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_joke.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(randomJoke)
const randomJokeProvider = RandomJokeProvider._();

final class RandomJokeProvider
    extends
        $FunctionalProvider<
          AsyncValue<JokeApiModel>,
          JokeApiModel,
          FutureOr<JokeApiModel>
        >
    with $FutureModifier<JokeApiModel>, $FutureProvider<JokeApiModel> {
  const RandomJokeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'randomJokeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$randomJokeHash();

  @$internal
  @override
  $FutureProviderElement<JokeApiModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<JokeApiModel> create(Ref ref) {
    return randomJoke(ref);
  }
}

String _$randomJokeHash() => r'cab0b76026e25f82ffe00058e3ba0774a550e37f';
