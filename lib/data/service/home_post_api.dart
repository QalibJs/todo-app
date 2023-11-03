import 'package:dio/dio.dart';

class HomePostService {
  static Dio dio = Dio();

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
