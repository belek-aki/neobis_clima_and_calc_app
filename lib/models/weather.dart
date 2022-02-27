class Weather {
  final String temp;
  final String discription;
  final String wind;
  final String rain;
  final String date;
  final String cityName;

  Weather({
    required this.temp,
    required this.discription,
    required this.rain,
    required this.wind,
    required this.date,
    required this.cityName,
  });

  static Weather fromJson(json) => Weather(
      temp: json["temp"].toString(),
      discription: json["weather"]["description"].toString(),
      rain: json["pres"].toString(),
      wind: json["wind_spd"].toString(),
      date: json["datetime"],
      cityName: json["city_name"]);
}
