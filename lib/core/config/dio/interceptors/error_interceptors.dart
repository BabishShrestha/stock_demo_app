import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  ///
  ErrorInterceptor(this._dio);

  final Dio _dio;

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 || err.response?.statusCode == 403) {
      // _dio.interceptors.errorLock.lock();
      // await _ref(appController.notifier).unAuthenticated();
      // _dio.interceptors.errorLock.clear('Access Token has been expired..');
    }
    return super.onError(err, handler);
  }
}
