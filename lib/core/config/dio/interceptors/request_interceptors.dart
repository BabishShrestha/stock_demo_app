import 'dart:developer';

import 'package:dio/dio.dart';

class RequestInterceptor extends Interceptor {
  ///
  RequestInterceptor(this._dio);

  final Dio _dio;

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // if (authType != AuthType.none) {
    // // place authentication logic here
    // // uncomment request lock
    // // _dio.interceptors.requestLock.lock();
    // }
    // // removing authType before requesting to server
    // options.extra.removeWhere((key, value) => key == authToken);
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('----- Status Code: ${response.data}');
    super.onResponse(response, handler);
  }
}
