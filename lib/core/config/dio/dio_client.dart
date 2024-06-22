import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'interceptors/interceptors.dart';

class DioClient {
  final Dio dio;

  DioClient({required this.dio}) {
    final baseUrl = "https://www.alphavantage.co/"; // Define your base URL here
    dio.options.baseUrl = baseUrl;
    dio.options.connectTimeout = const Duration(seconds: 30); // 30 sec
    dio.options.receiveTimeout = const Duration(seconds: 30);
    dio.options.contentType = Headers.jsonContentType;
    dio.options.headers = <String, dynamic>{
      'Accept': Headers.jsonContentType,
    };
    dio.options.validateStatus =
        (status) => status != null && status >= 200 && status < 400;

    dio.interceptors.addAll(
      <Interceptor>[
        if (kDebugMode) LogInterceptor(),
        RequestInterceptor(dio),
        ResponseInterceptor(dio),
        ErrorInterceptor(dio),
      ],
    );
  }
}
