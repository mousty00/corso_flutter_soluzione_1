import "package:freezed_annotation/freezed_annotation.dart";

part "http_cat_api_model.freezed.dart";
part "http_cat_api_model.g.dart";

@freezed
@JsonSerializable()
class HttpCatApiModel with _$HttpCatApiModel {
  const HttpCatApiModel({
    required this.imageUrl,
    required this.statusCode,
  });

  factory HttpCatApiModel.fromJson(Map<String, Object?> json) {
    return _$HttpCatApiModelFromJson(json);
  }

  @override
  final int statusCode;
  @override
  final String imageUrl;

  Map<String, Object?> toJson() {
    return _$HttpCatApiModelToJson(this);
  }
}
