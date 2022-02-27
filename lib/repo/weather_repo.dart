import 'package:neobis_weather_and_calc_app/models/weather.dart';
import 'package:neobis_weather_and_calc_app/repo/weather_client.dart';

class WeatherRepo {
  final WeatherClient client;

  WeatherRepo(this.client);

  Future<Weather> getCurrentWeather(lon, lat) async {
    final json = await client.getCurent(lon, lat);
    return Weather.fromJson(json["data"][0] ?? {"weather": {}});
  }
}
