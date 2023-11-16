import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo/data/service/hive/hive_service.dart';

import 'app.dart';
import 'locator/locator.dart';

void main() async {
  setUp();
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("note");
  HiveService hive = await HiveService.instance;
  int? note = hive.getData("note");
  runApp(
    MyApp(
      note: note,
    ),
  );
}
