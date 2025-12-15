import "package:color_changer/api/models/character_api_model.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "character_review_model.freezed.dart";

@freezed
abstract class CharacterReviewModel with _$CharacterReviewModel {
  factory CharacterReviewModel({
    required Character character,
    required int rating,
    required String comment,
  }) = _CharacterReviewModel;
}
