// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_status_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpStatusApiModel _$HttpStatusApiModelFromJson(Map<String, dynamic> json) =>
    HttpStatusApiModel(
      code: (json['code'] as num).toInt(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$HttpStatusApiModelToJson(HttpStatusApiModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
    };
