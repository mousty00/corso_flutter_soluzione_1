import "dart:math" as math;

import "package:color_changer/api/jokes_api.dart";
import "package:color_changer/api/models/joke_api_model.dart";
import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "random_joke.g.dart";

@riverpod
FutureOr<JokeApiModel> randomJoke(Ref ref) async {
  final client = Dio();
  final api = ref.watch(jokesApiProvider(client));

  final joke = await api.fetchJoke();

  await Future<void>.delayed(const Duration(seconds: 1), () {
    final random = math.Random();
    final fail = random.nextBool();
    if (fail) throw Exception("LOL");
  });

  return joke;
}
