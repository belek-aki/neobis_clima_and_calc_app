import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_weather_and_calc_app/widgets/weather_today_clima.dart';

class WeatherTodayData extends StatelessWidget {
  const WeatherTodayData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(5)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ClimaTodayWeather(
              temp: '-7',
              time: '07:00',
              image: ('assets/icons/sunny.png'),
              isColor: false,
            ),
            ClimaTodayWeather(
              temp: '-4',
              time: '09:00',
              image: ('assets/icons/sunny.png'),
              isColor: false,
            ),
            ClimaTodayWeather(
              temp: '24',
              time: '07:00',
              image: ('assets/icons/sunny.png'),
              isColor: true,
            ),
            ClimaTodayWeather(
              temp: '-2',
              time: '12:00',
              image: ('assets/icons/sunny.png'),
              isColor: false,
            ),
            ClimaTodayWeather(
              temp: '6',
              time: '15:00',
              image: ('assets/icons/sunny.png'),
              isColor: false,
            ),
            ClimaTodayWeather(
              temp: '6',
              time: '17:00',
              image: ('assets/icons/sunny.png'),
              isColor: false,
            ),
            ClimaTodayWeather(
              temp: '6',
              time: '19:00',
              image: ('assets/icons/sunny.png'),
              isColor: false,
            ),
            ClimaTodayWeather(
              temp: '6',
              time: '21:00',
              image: ('assets/icons/sunny.png'),
              isColor: false,
            ),
          ],
        ),
      ),
    );
  }
}
