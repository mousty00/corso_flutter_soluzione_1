import "package:color_changer/api/models/joke_api_model.dart";
import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "jokes_api.g.dart";

@riverpod
JokesApi jokesApi(Ref ref, Dio client) {
  return JokesApi(client);
}

class JokesApi {
  const JokesApi(this.client);
  final Dio client;

  Future<JokeApiModel> fetchJoke() async {
    const url = "http://www.official-joke-api.appspot.com/random_joke";

    final response = await client.get<Map<String, Object?>>(url);

    final data = response.data!;
    final joke = JokeApiModel.fromJson(data);
    return joke;
  }
}
