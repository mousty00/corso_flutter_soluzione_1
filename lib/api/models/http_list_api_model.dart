import "package:color_changer/api/models/http_status_api_model.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "http_list_api_model.freezed.dart";
part "http_list_api_model.g.dart";

@freezed
@JsonSerializable()
class HttpListApiModel with _$HttpListApiModel {
  const HttpListApiModel({
    required this.statusCodes,
  });

  factory HttpListApiModel.fromJson(Map<String, Object?> json) {
    return _$HttpListApiModelFromJson(json);
  }

  @override
  final List<HttpStatusApiModel> statusCodes;

  Map<String, Object?> toJson() {
    return _$HttpListApiModelToJson(this);
  }
}
