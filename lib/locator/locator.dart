import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setUp() {
  locator.registerLazySingleton<Dio>(() => Dio());
  
}
