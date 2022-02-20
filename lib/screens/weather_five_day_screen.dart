import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_weather_and_calc_app/widgets/weather_five_day_appBar.dart';
import 'package:neobis_weather_and_calc_app/widgets/weather_five_day_buttom_text.dart';
import 'package:neobis_weather_and_calc_app/widgets/weather_five_day_data.dart';
import 'package:neobis_weather_and_calc_app/widgets/weather_five_day_title.dart';
import 'package:neobis_weather_and_calc_app/widgets/weather_today_data.dart';
import 'package:neobis_weather_and_calc_app/widgets/weather_today_title.dart';

class WeatherFiveDayScreen extends StatelessWidget {
  const WeatherFiveDayScreen({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            WeatherFiveDayAppBar(),
            WeatherTodayTitle(),
            WeatherTodayData(),
            WeatherFiveDayTitle(),
            WeatherFiveDayData(),
            WeatherFiveDayButtomText(),
          ],
        ),
      ),
    );
  }
}
