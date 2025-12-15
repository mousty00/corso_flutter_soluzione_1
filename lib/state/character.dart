import "package:color_changer/api/http_client.dart";
import "package:color_changer/api/models/api_response_model.dart";
import "package:color_changer/api/models/character_api_model.dart";
import "package:color_changer/api/rick_morty_api.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "character.g.dart";

@riverpod
FutureOr<ApiResponse> getCharacters(Ref ref, int page) {
  final client = ref.watch(httpClientProvider("https://rickandmortyapi.com/api/"));
  final api = ref.watch(rickAndMortyApiProvider(client));

  return api.getCharacters(page);
}

@riverpod
FutureOr<Character> getCharacter(Ref ref, int id) {
  final client = ref.watch(httpClientProvider("https://rickandmortyapi.com/api/"));
  final api = ref.watch(rickAndMortyApiProvider(client));

  return api.getCharacter(id);
}
