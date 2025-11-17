import "package:freezed_annotation/freezed_annotation.dart";

part "http_status_api_model.freezed.dart";
part "http_status_api_model.g.dart";

@freezed
@JsonSerializable()
class HttpStatusApiModel with _$HttpStatusApiModel {
  const HttpStatusApiModel({
    required this.code,
    required this.description,
  });

  factory HttpStatusApiModel.fromJson(Map<String, Object?> json) {
    return _$HttpStatusApiModelFromJson(json);
  }

  @override
  final int code;
  @override
  final String description;

  Map<String, Object?> toJson() {
    return _$HttpStatusApiModelToJson(this);
  }
}
