import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClimaTodayWeather extends StatelessWidget {
  const ClimaTodayWeather({
    Key? key,
    required this.time,
    required this.temp,
    required this.image,
    required this.isColor,
  }) : super(key: key);
  final String time;
  final String temp;
  final String image;
  final bool isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(70),
      height: ScreenUtil().setHeight(155),
      decoration: isColor == true
          ? BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.2),
              borderRadius: BorderRadius.circular(15),
            )
          : null,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(13),
              left: ScreenUtil().setWidth(10),
              right: ScreenUtil().setWidth(10),
              bottom: ScreenUtil().setWidth(15),
            ),
            child: Text(
              '$temp°C',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: ScreenUtil().setWidth(15)),
            child: Image.asset(
              '$image',
              width: ScreenUtil().setWidth(43),
              height: ScreenUtil().setWidth(43),
            ),
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
