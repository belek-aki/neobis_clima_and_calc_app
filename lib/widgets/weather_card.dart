import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherCartData extends StatelessWidget {
  const WeatherCartData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(353),
      height: ScreenUtil().setHeight(353),
      child: Card(
        color: Color.fromRGBO(255, 255, 255, 0.4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setWidth(17)),
                child: Text(
                  'To day: 16 February',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '-4',
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '°',
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                'Солнечно',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: ScreenUtil().setWidth(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                          child: Image.asset(
                            "assets/icons/Vector.png",
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                          child: Image.asset(
                            "assets/icons/veter.png",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                          child: Text(
                            'Ветер',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                          child: Text(
                            'Дождь',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                          child: Text(
                            '|',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                          child: Text(
                            '|',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                          child: Text(
                            '15 km/h',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                          child: Text(
                            '26 %',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
