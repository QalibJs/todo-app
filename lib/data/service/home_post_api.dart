import 'package:dio/dio.dart';
import '../../locator/locator.dart';

class HomePostService {
  static Dio dio = locator.get<Dio>();

  static Future postService({
    required String title,
    required String note,
  }) async {
    var data = {
      "title": title,
      "note": title,
    };

    Response response = await dio.post(
      "path",
      data: data,
    );

    if (response.statusCode == 200) {
      return null;
    } else {
      return null;
    }
  }
}
