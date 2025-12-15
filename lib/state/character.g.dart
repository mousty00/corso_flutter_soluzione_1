// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getCharacters)
const getCharactersProvider = GetCharactersFamily._();

final class GetCharactersProvider
    extends
        $FunctionalProvider<
          AsyncValue<ApiResponse>,
          ApiResponse,
          FutureOr<ApiResponse>
        >
    with $FutureModifier<ApiResponse>, $FutureProvider<ApiResponse> {
  const GetCharactersProvider._({
    required GetCharactersFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'getCharactersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getCharactersHash();

  @override
  String toString() {
    return r'getCharactersProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ApiResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ApiResponse> create(Ref ref) {
    final argument = this.argument as int;
    return getCharacters(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCharactersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getCharactersHash() => r'7b107b1c23768b735a26661e496d7ac252998424';

final class GetCharactersFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ApiResponse>, int> {
  const GetCharactersFamily._()
    : super(
        retry: null,
        name: r'getCharactersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetCharactersProvider call(int page) =>
      GetCharactersProvider._(argument: page, from: this);

  @override
  String toString() => r'getCharactersProvider';
}

@ProviderFor(getCharacter)
const getCharacterProvider = GetCharacterFamily._();

final class GetCharacterProvider
    extends
        $FunctionalProvider<
          AsyncValue<Character>,
          Character,
          FutureOr<Character>
        >
    with $FutureModifier<Character>, $FutureProvider<Character> {
  const GetCharacterProvider._({
    required GetCharacterFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'getCharacterProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getCharacterHash();

  @override
  String toString() {
    return r'getCharacterProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Character> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Character> create(Ref ref) {
    final argument = this.argument as int;
    return getCharacter(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCharacterProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getCharacterHash() => r'4a985e526c56e6df6dd68ecb9634575bd0603f16';

final class GetCharacterFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Character>, int> {
  const GetCharacterFamily._()
    : super(
        retry: null,
        name: r'getCharacterProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetCharacterProvider call(int id) =>
      GetCharacterProvider._(argument: id, from: this);

  @override
  String toString() => r'getCharacterProvider';
}
