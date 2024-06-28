import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:stock_demo_app/core/config/dio/dio_helper.dart';
import 'package:stock_demo_app/core/config/dio/dio_util.dart';
import 'package:stock_demo_app/core/config/failure.dart';
import 'package:stock_demo_app/features/stock_chart/domain/nepse_mock_data_model.dart';

abstract class StockRepo {
  Future<Either<NepseMockDataModel, Failure>> fetchNepseStockData();
}

class StockRepoImpl implements StockRepo {
  final DioHelper _dioHelper;
  StockRepoImpl({required DioHelper dioHelper}) : _dioHelper = dioHelper;
  @override
  Future<Either<NepseMockDataModel, Failure>> fetchNepseStockData() async {
    try {
      final response = await _dioHelper.request(
          reqType: DioMethod.get,
          endpoint: 'a33ca4f8-cfce-4fa1-a450-b40a25928d60',
          authType: AuthType.basic);

      return response.fold(
        (successResponse) {
          final nepseMockDataModel =
              NepseMockDataModel.fromJson(successResponse.data);
          log('success');
          return Left(nepseMockDataModel);
        },
        (failureResponse) {
          return Right(Failure.fromException(failureResponse));
        },
      );
    } catch (e) {
      return Right(Failure(e.toString(), FailureType.exception));
    }
  }
}
