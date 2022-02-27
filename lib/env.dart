import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static final bool debug = dotenv.env["DEBUG"] == "true";
  static final String host =
      dotenv.env["HOST_NAME"] ?? "https://weatherbit-v1-mashape.p.rapidapi.com";
  static final String xRapidapiHost = dotenv.env["X_RAPIDAPI_HOST"] ?? "";
  static final String xRapidapiKey = dotenv.env["X_RAPIDAPI_KEY"] ?? "";
}
