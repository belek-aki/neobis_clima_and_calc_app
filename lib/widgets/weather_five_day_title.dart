import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherFiveDayTitle extends StatelessWidget {
  const WeatherFiveDayTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: ScreenUtil().setWidth(49),
        left: ScreenUtil().setWidth(32),
        right: ScreenUtil().setWidth(30),
        bottom: ScreenUtil().setWidth(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'На этой неделе',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          Image.asset("assets/icons/calendar.png")
        ],
      ),
    );
  }
}
