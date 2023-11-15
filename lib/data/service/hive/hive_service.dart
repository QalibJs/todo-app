import 'package:hive/hive.dart';

class HiveService {
  HiveService._();

  static HiveService? _instance;
  static Box? _box;

  static Future<HiveService> get getInstance async {
    _instance ??= HiveService._();
    _box ??= await Hive.openBox("note");
    return _instance!;
  }

  static void saveData(key, String value) => _box?.put(key, value);
}
