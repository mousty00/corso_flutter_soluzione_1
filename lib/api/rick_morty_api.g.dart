// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rick_morty_api.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main

class _RickAndMortyApi implements RickAndMortyApi {
  _RickAndMortyApi(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://rickandmortyapi.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ApiResponseModel> getCharacters(int page) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'page': page};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponseModel>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/character',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late ApiResponseModel _value;
    try {
      _value = ApiResponseModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<CharacterApiModel> getCharacter(int id) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<CharacterApiModel>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/character/${id}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late CharacterApiModel _value;
    try {
      _value = CharacterApiModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, _result);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(rickAndMortyApi)
const rickAndMortyApiProvider = RickAndMortyApiFamily._();

final class RickAndMortyApiProvider
    extends
        $FunctionalProvider<RickAndMortyApi, RickAndMortyApi, RickAndMortyApi>
    with $Provider<RickAndMortyApi> {
  const RickAndMortyApiProvider._({
    required RickAndMortyApiFamily super.from,
    required Dio super.argument,
  }) : super(
         retry: null,
         name: r'rickAndMortyApiProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$rickAndMortyApiHash();

  @override
  String toString() {
    return r'rickAndMortyApiProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<RickAndMortyApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RickAndMortyApi create(Ref ref) {
    final argument = this.argument as Dio;
    return rickAndMortyApi(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RickAndMortyApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RickAndMortyApi>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RickAndMortyApiProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$rickAndMortyApiHash() => r'58e140fbfb6e5a0a0b8040c7418f40e4cf896bf5';

final class RickAndMortyApiFamily extends $Family
    with $FunctionalFamilyOverride<RickAndMortyApi, Dio> {
  const RickAndMortyApiFamily._()
    : super(
        retry: null,
        name: r'rickAndMortyApiProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RickAndMortyApiProvider call(Dio dio) =>
      RickAndMortyApiProvider._(argument: dio, from: this);

  @override
  String toString() => r'rickAndMortyApiProvider';
}
