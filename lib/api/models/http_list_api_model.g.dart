// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_list_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpListApiModel _$HttpListApiModelFromJson(Map<String, dynamic> json) =>
    HttpListApiModel(
      statusCodes: (json['statusCodes'] as List<dynamic>)
          .map((e) => HttpStatusApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HttpListApiModelToJson(HttpListApiModel instance) =>
    <String, dynamic>{'statusCodes': instance.statusCodes};
