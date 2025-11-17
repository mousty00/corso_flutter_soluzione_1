import "package:color_changer/api/cat_api.dart";
import "package:color_changer/api/models/http_cat_api_model.dart";
import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "cat.g.dart";

@riverpod
Future<HttpCatApiModel> cat(Ref ref, int status) async {
  final client = Dio(
    BaseOptions(
      baseUrl: "https://http.cat",
    ),
  );

  final api = CatApi(client);

  final response = await api.get(status);
  return response;
}
