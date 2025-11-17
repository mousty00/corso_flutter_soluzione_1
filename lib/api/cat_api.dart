import "package:color_changer/api/models/http_cat_api_model.dart";
import "package:color_changer/api/models/http_list_api_model.dart";
import "package:dio/dio.dart";

// https://publicapi.dev/http-cat-api

class CatApi {
  const CatApi(this.client);
  final Dio client;

  Future<HttpListApiModel> list() async {
    final result = await client.get<Map<String, Object?>>("/statuses");
    final value = result.data!;
    return HttpListApiModel.fromJson(value);
  }

  Future<HttpCatApiModel> get(int status) async {
    final result = await client.get<Map<String, Object?>>("/status/$status");
    final value = result.data!;
    return HttpCatApiModel.fromJson(value);
  }
}
