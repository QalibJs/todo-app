import 'package:hive_flutter/adapters.dart';

class HiveService {
  HiveService._();

  static HiveService? _instance;
  static Box? _box;

  static Future<HiveService> get instance async {
    _instance ??= HiveService._();
    _box ??= await Hive.openBox("note");
    return _instance!;
  }

  void saveData(key, dynamic value) => _box?.put(key, value);
  dynamic getData(String value) => _box?.get(value);
}
