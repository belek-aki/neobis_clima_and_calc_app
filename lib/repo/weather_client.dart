import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:neobis_weather_and_calc_app/env.dart';

class WeatherClient {
  final headers = {
    'x-rapidapi-host': Env.xRapidapiHost,
    'x-rapidapi-key': Env.xRapidapiKey,
  };
  Uri buildUrl(String path, {Map<String, dynamic>? params}) {
    return Uri.https(Env.host, path, params);
  }

  Future<Map<String, dynamic>> getCurent(double lon, double lat) async {
    final String path = "/current";
    final params = {
      "lon": lon.toString(),
      "lat": lat.toString(),
    };
    final response = await http.get(
      buildUrl(path, params: params),
      headers: headers,
    );
    return jsonDecode(response.body);
  }
}
