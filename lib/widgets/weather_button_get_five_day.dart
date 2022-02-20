import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_weather_and_calc_app/screens/weather_five_day_screen.dart';

class WeatherButtonGetFiveDay extends StatelessWidget {
  const WeatherButtonGetFiveDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(250),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WeatherFiveDayScreen(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
        ),
        child: Row(
          children: [
            Text(
              'Прогноз на неделю',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
