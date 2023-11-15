import 'package:dio/dio.dart';
import 'package:todo/locator/locator.dart';

class HomeGetService {
  static Dio dio = locator.get<Dio>();

  static Future getDatas() async {
    Response response = await dio.get("path");

    if (response.statusCode == 200) {
      return null;
    } else {
      return null;
    }
  }
}
