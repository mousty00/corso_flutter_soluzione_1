// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeApiModel _$JokeApiModelFromJson(Map<String, dynamic> json) => JokeApiModel(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String,
  setup: json['setup'] as String,
  punchline: json['punchline'] as String,
);

Map<String, dynamic> _$JokeApiModelToJson(JokeApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'setup': instance.setup,
      'punchline': instance.punchline,
    };
