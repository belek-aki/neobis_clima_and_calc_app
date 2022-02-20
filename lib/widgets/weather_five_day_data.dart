import 'package:flutter/material.dart';
import 'package:neobis_weather_and_calc_app/widgets/widget_weather_five_day.dart';

class WeatherFiveDayData extends StatelessWidget {
  const WeatherFiveDayData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          WidgetWeatherFiveDay(
            date: '26 Фев',
            image: 'assets/icons/Group_sunrise.png',
            temp: '1',
          ),
          WidgetWeatherFiveDay(
            date: '26 Фев',
            image: 'assets/icons/cloud_rigth.png',
            temp: '3',
          ),
          WidgetWeatherFiveDay(
            date: '26 Фев',
            image: 'assets/icons/cloudy_thunderstorm.png',
            temp: '4',
          ),
          WidgetWeatherFiveDay(
            date: '26 Фев',
            image: 'assets/icons/Group_sunrise.png',
            temp: '3',
          ),
          WidgetWeatherFiveDay(
            date: '26 Фев',
            image: 'assets/icons/cloudy_thunderstorm.png',
            temp: '4',
          ),
        ],
      ),
    );
  }
}
