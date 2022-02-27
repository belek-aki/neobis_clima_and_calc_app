import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_weather_and_calc_app/models/weather.dart';
import 'package:neobis_weather_and_calc_app/repo/get_location.dart';
import 'package:neobis_weather_and_calc_app/repo/weather_client.dart';
import 'package:neobis_weather_and_calc_app/repo/weather_repo.dart';
import 'package:neobis_weather_and_calc_app/widgets/weather_appBar.dart';
import 'package:neobis_weather_and_calc_app/widgets/weather_button_get_five_day.dart';
import 'package:neobis_weather_and_calc_app/widgets/weather_card.dart';
import 'package:neobis_weather_and_calc_app/widgets/weather_sunrise_icon.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  Weather weather = Weather(
      temp: '--',
      discription: '--',
      rain: '--',
      wind: '--',
      date: '--',
      cityName: '--');

  @override
  void initState() {
    this.doSomeAsyncStuff();

    super.initState();
  }

  doSomeAsyncStuff() async {
    final weatherRepo = WeatherRepo(WeatherClient());
    final location = await GetLocation().getUserLocation();
    final weather = await weatherRepo.getCurrentWeather(
      location!.longitude,
      location.latitude,
    );
    setState(() {
      this.weather = weather;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: ScreenUtil().setHeight(75)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(71, 231, 223, 0.9),
              Color.fromRGBO(74, 105, 255, 1),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              WeatherAppBar(
                weather: this.weather,
              ),
              sunrise(),
              WeatherCartData(
                weather: this.weather,
              ),
              SizedBox(height: 50),
              WeatherButtonGetFiveDay(),
              SizedBox(height: 47.5),
            ],
          ),
        ),
      ),
    );
  }
}
