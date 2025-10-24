import 'dart:ffi';
import 'dart:io';
import 'package:http/http.dart' as http;

List<String> exercise1(String s) {
  return [
    for (var i = 0; i < s.length; i += 2)
      if (i + 1 < s.length) s[i] + s[i + 1] else '${s[i]}_',
  ];
}

class ApiService {
  const ApiService();

  Future<http.Response> callApi(
    String url,
    Future<http.Response> Function(Uri url, {Map<String, String>? headers})
    method,
  ) async {
    final uri = Uri.parse(url);
    try {
      return method(uri, headers: null);
    } on HttpException {
      throw HttpException("http error.");
    } catch (e) {
      if (e is Exception) {
        throw ApiCustomException.withException(e);
      } else {
        throw ApiCustomException();
      }
    }
  }
}

class ApiCustomException implements Exception {
  final Exception? e;
  ApiCustomException() : e = null;
  ApiCustomException.withException(this.e);

  @override
  String toString() => 'ApiCustomException: ${e ?? 'Unknown error'}';
}

var apiGetUrl = "";

enum api { getAll, get , create, update}


extension ApiAlbum on api {

  String get url {
    switch (this) {
      case api.getAll:
        return "/api/albums";
      case api.get:
        return "/api/albums/";
      case api.create:
        return "";
      case api.update:
        return "";
    }  
  }
}

void main() {
  print(exercise1("abcd"));
  print(exercise1("abcde"));
  print(api.get.url);

  var apiService = ApiService();
  apiService.callApi(api.get.url, http.get);

}
