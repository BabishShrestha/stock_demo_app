import 'dart:developer';

import 'package:dio/dio.dart';

class ResponseInterceptor extends Interceptor {
  ResponseInterceptor(this._dio);

  final Dio _dio;

  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    if (response.statusCode == 200) return super.onResponse(response, handler);

    if (response.statusCode == 401 || response.statusCode == 403) {
      // _ref.read(authController.notifier).makeAuthenticatedRequest();
      // _dio.interceptors.errorLock.lock();
      // await _ref(appController.notifier).unAuthenticated();
      // _dio.interceptors.errorLock.clear('${response.statusMessage}');
      return super.onResponse(response, handler);
    } else if (response.statusCode == 500) {
      log('----- Status Code: ${response.data}');

      // logout user
      // _ref.read(authController.notifier).logOut(handler.);
    } else {
      return super.onResponse(response, handler);
    }
  }
}
