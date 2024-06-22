import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:stock_demo_app/core/config/dependency_injection/di.dart';
import 'package:stock_demo_app/core/config/dio/dio_client.dart';
import 'package:stock_demo_app/core/config/dio/dio_util.dart';

import '../failure.dart';

class DioHelper {
  String authToken = 'authToken';
  Dio get _dio => getIt<DioClient>().dio;
  Future<Either<R, Failure>> postUri<R>({
    required Uri uri,
    required AuthType authType,
    CancelToken? cancelToken,
  }) async {
    try {
      var response = await _dio.postUri(
        uri,
        // data: _data,
        options: Options(
          contentType: Headers.jsonContentType,
          extra: {
            authToken: authType,
          },
        ),
      );
      final json = response.data! as R;
      // (response.data is List) ?
      //   response.data as List<dynamic>:

      return Left(json);
    } on DioException catch (e) {
      return Right(Failure.fromException(e));
    } catch (e) {
      return Right(Failure.fromException(e));
    }
  }

  Future<Either<Response, Failure>> request<R>({
    required DioMethod reqType,
    required String endpoint,
    required AuthType authType,
    R? reqBody,
    CancelToken? cancelToken,
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final method = reqType.name;
      // final data = <String, dynamic>{};
      // if (reqBody != null) {
      //   data.addAll(reqBody);
      // }
      var response = await _dio.request(
        endpoint,
        queryParameters: queryParam ?? <String, dynamic>{},
        data: reqBody,
        options: Options(
          method: method,
          contentType: Headers.jsonContentType,
          headers: headers,
          extra: {
            authToken: authType,
          },
        ),
      );

      return Left(response);
    } on DioException catch (e) {
      return Right(e.toFailure);
    } catch (e) {
      return Right(Failure.fromException(e));
    }
  }

  parseInternalData<R>(dynamic data) {
    if (data is List) {
      return data.map((e) => e as R).toList();
    } else {
      return data as R;
    }
  }
}
