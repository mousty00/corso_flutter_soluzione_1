import "package:color_changer/api/models/api_response_model.dart";
import "package:color_changer/api/models/character_api_model.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "rick_morty_api.g.dart";

@riverpod
RickAndMortyApi rickAndMortyApi(Ref ref, Dio dio) {
  return RickAndMortyApi(dio);
}

@RestApi(baseUrl: "https://rickandmortyapi.com/api/")
abstract class RickAndMortyApi {
  factory RickAndMortyApi(Dio dio, {String baseUrl}) = _RickAndMortyApi;

  @GET("/character")
  Future<ApiResponse> getCharacters(@Query("page") int page);

  @GET("/character/{id}")
  Future<Character> getCharacter(@Path("id") int id);
}
