import 'package:dio/dio.dart';

class HomeGetService {
  static Dio dio = Dio();

  static Future getDatas() async {
    Response response = await dio.get("path");

    if (response.statusCode == 200) {
      return null;
    } else {
      return null;
    }
  }
}
