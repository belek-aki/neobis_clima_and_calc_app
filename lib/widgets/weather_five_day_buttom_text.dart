import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherFiveDayButtomText extends StatelessWidget {
  const WeatherFiveDayButtomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/small_sunrise.png',
            width: ScreenUtil().setWidth(22),
            height: ScreenUtil().setHeight(22),
          ),
          SizedBox(width: 10),
          Text(
            'AccuWeather',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
