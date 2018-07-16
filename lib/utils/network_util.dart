import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkUtil {
  // next three lines makes this class a Singleton
  static NetworkUtil _instance = new NetworkUtil.internal();
  final JsonDecoder _decoder = new JsonDecoder();
  factory NetworkUtil() => _instance;

  NetworkUtil.internal();

  /* Future<dynamic> get(String url) {
    return http.get(url).then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return _decoder.convert(res);
    });
  }*/

  Future<dynamic> post(String url, {Map headers, body, encoding}) {
    return http
        .post(url, body: body, headers: headers, encoding: encoding)
        .then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return _decoder.convert(res);
    });
  }

 /* Future<Map> postSignUpData(String url, Map map) async {
    http.Response res = await http.post(url, body: map); // post api call
    Map data = _decoder.convert(res.body);
    return data;
  }*/

  Future<Map> accountActivation(String url, Map map) async {
    http.Response res = await http.post(url, body: map); // post api call
    Map dataVerificationResponse = _decoder.convert(res.body);
    return dataVerificationResponse;
  }

   Future<Map> signIn(String url, Map map) async {
    http.Response res = await http.post(url, body: map); // post api call
    Map data = JSON.decode(res.body);
    return data;
  }
}
