import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static final bool debug = dotenv.env["DEBUG"] == "true";
}
