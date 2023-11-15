import 'package:dio/dio.dart';
import 'package:todo/locator/locator.dart';


class HomePutService {
  static Dio dio = locator.get<Dio>();

  static Future putDatas() async {
    Response response = await dio.put("path");


    if(response.statusCode==200){}
    
  }
}
