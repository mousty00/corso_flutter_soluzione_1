// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DogApiModel _$DogApiModelFromJson(Map<String, dynamic> json) => DogApiModel(
  message: (json['message'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$DogApiModelToJson(DogApiModel instance) =>
    <String, dynamic>{'message': instance.message};
