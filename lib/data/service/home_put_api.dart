import 'package:dio/dio.dart';

class HomePutService {
  static Dio dio = Dio();

  static Future putDatas() async {
    Response response = await dio.put("path");


    if(response.statusCode==200){}
    
  }
}
