import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherFiveDayAppBar extends StatelessWidget {
  const WeatherFiveDayAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30)),
      height: ScreenUtil().setHeight(50),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.keyboard_arrow_left_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Назад',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: ScreenUtil().setWidth(45),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/setting.png"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
