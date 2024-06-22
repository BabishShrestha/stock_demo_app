import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:stock_demo_app/core/config/dio/dio_client.dart';
import 'package:stock_demo_app/core/config/dio/dio_helper.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<DioClient>(DioClient(dio: getIt<Dio>()));
  getIt.registerSingleton<DioHelper>(DioHelper());
}
