import 'package:dio/dio.dart';

class HomeDeleteService {
  static Dio dio = Dio();

  static Future putDatas() async {
    Response response = await dio.delete("path");

    if (response.statusCode == 200) {
      return null;
    } else {
      return null;
    }
  }
}
