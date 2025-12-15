import "package:flutter/foundation.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "character_api_model.freezed.dart";
part "character_api_model.g.dart";

@freezed
abstract class CharacterApiModel with _$CharacterApiModel {
  const factory CharacterApiModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required GenericNameUrl origin,
    required GenericNameUrl location,
    required String image,
    required List<String> episode,
    required String url,
    required String created,
  }) = _CharacterApiModel;

  factory CharacterApiModel.fromJson(Map<String, Object?> json) =>
      _$CharacterApiModelFromJson(json);
}

@freezed
abstract class GenericNameUrl with _$GenericNameUrl {
  const factory GenericNameUrl({required String name, required String url}) =
      _GenericNameUrl;

  factory GenericNameUrl.fromJson(Map<String, Object?> json) =>
      _$GenericNameUrlFromJson(json);
}

typedef Character = CharacterApiModel;
