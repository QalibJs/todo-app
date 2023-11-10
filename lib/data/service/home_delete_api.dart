import 'package:dio/dio.dart';
import '../../locator/locator.dart';

class HomeDeleteService {
  static Dio dio = locator.get<Dio>();

  static Future putDatas() async {
    Response response = await dio.delete("path");

    if (response.statusCode == 200) {
      return null;
    } else {
      return null;
    }
  }
}
