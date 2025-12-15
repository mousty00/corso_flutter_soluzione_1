import "package:color_changer/api/models/character_api_model.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "api_response_model.freezed.dart";
part "api_response_model.g.dart";

@freezed
abstract class ApiResponseModel with _$ApiResponseModel {
  const factory ApiResponseModel({
    Info? info,
    @Default([]) List<CharacterApiModel> results,
  }) = _ApiResponseModel;

  factory ApiResponseModel.fromJson(Map<String, Object?> json) =>
      _$ApiResponseModelFromJson(json);
}

@freezed
abstract class Info with _$Info {
  const factory Info({int? count, int? pages, String? next, String? prev}) = _Info;

  factory Info.fromJson(Map<String, Object?> json) => _$InfoFromJson(json);
}

typedef ApiResponse = ApiResponseModel;
