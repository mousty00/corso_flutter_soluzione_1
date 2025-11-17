// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_cat_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpCatApiModel _$HttpCatApiModelFromJson(Map<String, dynamic> json) =>
    HttpCatApiModel(
      imageUrl: json['imageUrl'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$HttpCatApiModelToJson(HttpCatApiModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'imageUrl': instance.imageUrl,
    };
