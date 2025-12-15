// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiResponseModel _$ApiResponseModelFromJson(Map<String, dynamic> json) =>
    _ApiResponseModel(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      results:
          (json['results'] as List<dynamic>?)
              ?.map(
                (e) => CharacterApiModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ApiResponseModelToJson(_ApiResponseModel instance) =>
    <String, dynamic>{'info': instance.info, 'results': instance.results};

_Info _$InfoFromJson(Map<String, dynamic> json) => _Info(
  count: (json['count'] as num?)?.toInt(),
  pages: (json['pages'] as num?)?.toInt(),
  next: json['next'] as String?,
  prev: json['prev'] as String?,
);

Map<String, dynamic> _$InfoToJson(_Info instance) => <String, dynamic>{
  'count': instance.count,
  'pages': instance.pages,
  'next': instance.next,
  'prev': instance.prev,
};
