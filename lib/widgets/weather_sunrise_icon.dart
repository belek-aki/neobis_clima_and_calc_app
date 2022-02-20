import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget sunrise() {
  return Container(
    width: ScreenUtil().setWidth(241),
    height: ScreenUtil().setHeight(241),
    child: Image.asset("assets/icons/Group_sunrise.png"),
  );
}
