import "package:color_changer/api/cat_api.dart";
import "package:color_changer/api/models/http_status_api_model.dart";
import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "cats.g.dart";

@riverpod
Future<List<HttpStatusApiModel>> cats(Ref ref) async {
  final client = Dio(
    BaseOptions(
      baseUrl: "https://http.cat",
    ),
  );

  final api = CatApi(client);

  final response = await api.list();

  return response.statusCodes;
}
