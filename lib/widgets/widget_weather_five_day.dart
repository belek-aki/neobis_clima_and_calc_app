import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetWeatherFiveDay extends StatelessWidget {
  const WidgetWeatherFiveDay({
    Key? key,
    required this.date,
    required this.temp,
    required this.image,
  }) : super(key: key);
  final String date;
  final String temp;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(30),
          right: ScreenUtil().setWidth(66),
          bottom: ScreenUtil().setHeight(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            date,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Image.asset(
            "$image",
            width: ScreenUtil().setWidth(44),
            height: ScreenUtil().setHeight(34),
          ),
          Text(
            '$temp °',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
