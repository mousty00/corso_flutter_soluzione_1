import "package:freezed_annotation/freezed_annotation.dart";

part "joke_api_model.freezed.dart";
part "joke_api_model.g.dart";

@freezed
@JsonSerializable()
class JokeApiModel with _$JokeApiModel {
  const JokeApiModel({
    required this.id,
    required this.type,
    required this.setup,
    required this.punchline,
  });

  factory JokeApiModel.fromJson(Map<String, Object?> json) {
    return _$JokeApiModelFromJson(json);
  }

  @override
  final int id;
  @override
  final String type;
  @override
  final String setup;
  @override
  final String punchline;

  Map<String, Object?> toJson() {
    return _$JokeApiModelToJson(this);
  }
}
