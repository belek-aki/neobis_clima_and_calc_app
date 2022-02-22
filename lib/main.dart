import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:neobis_weather_and_calc_app/app.dart';

main() async {
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}
