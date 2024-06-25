import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:stock_demo_app/core/config/dependency_injection/di.dart';
import 'package:stock_demo_app/core/config/dio/dio_helper.dart';
import 'package:stock_demo_app/core/config/dio/dio_util.dart';
import 'package:stock_demo_app/core/config/failure.dart';
import 'package:stock_demo_app/features/stock_chart/domain/nepse_mock_data_model.dart';

abstract class StockRepo {
  Future<Either<NepseMockDataModel, Failure>> fetchNepseStockData();

  Future<Either<List<TimeSeriesData>, Failure>> getMinutelyStockData();
  Future<Either<List<TimeSeriesData>, Failure>> getHourlyStockData();
  Future<Either<List<TimeSeriesData>, Failure>> getDailyStockData();
  Future<Either<List<TimeSeriesData>, Failure>> getMonthlyStockData();
  Future<Either<List<TimeSeriesData>, Failure>> getYearlyStockData();
}

class StockRepoImpl implements StockRepo {
  final _dioHelper = getIt<DioHelper>();
  @override
  Future<Either<NepseMockDataModel, Failure>> fetchNepseStockData() async {
    try {
      final response = await _dioHelper.request(
          reqType: DioMethod.get,
          endpoint: '94c26c8e-2cb1-4a10-be1c-eb03d84708ce',
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

  @override
  Future<Either<List<TimeSeriesData>, Failure>> getMinutelyStockData() async {
    try {
      final response = await fetchNepseStockData();
      return response.fold(
        (successResponse) {
          final List<TimeSeriesData> minutelyStockData =
              successResponse.data.minuteData;
          return Left(minutelyStockData);
        },
        (failureResponse) => Right(Failure.fromException(failureResponse)),
      );
    } catch (e) {
      return Right(Failure(e.toString(), FailureType.exception));
    }
  }

  @override
  Future<Either<List<TimeSeriesData>, Failure>> getHourlyStockData() async {
    try {
      final response = await fetchNepseStockData();
      return response.fold(
        (successResponse) {
          final List<TimeSeriesData> hourData = successResponse.data.hourData;
          return Left(hourData);
        },
        (failureResponse) => Right(Failure.fromException(failureResponse)),
      );
    } catch (e) {
      return Right(Failure(e.toString(), FailureType.exception));
    }
  }

  @override
  Future<Either<List<TimeSeriesData>, Failure>> getDailyStockData() async {
    try {
      final response = await fetchNepseStockData();
      return response.fold(
        (successResponse) {
          final List<TimeSeriesData> dailyStockData =
              successResponse.data.dayData;
          return Left(dailyStockData);
        },
        (failureResponse) => Right(Failure.fromException(failureResponse)),
      );
    } catch (e) {
      return Right(Failure(e.toString(), FailureType.exception));
    }
  }

  @override
  Future<Either<List<TimeSeriesData>, Failure>> getMonthlyStockData() async {
    try {
      final response = await fetchNepseStockData();
      return response.fold(
        (successResponse) {
          final List<TimeSeriesData> monthlyStockData =
              successResponse.data.monthData;
          return Left(monthlyStockData);
        },
        (failureResponse) => Right(Failure.fromException(failureResponse)),
      );
    } catch (e) {
      return Right(Failure(e.toString(), FailureType.exception));
    }
  }

  @override
  Future<Either<List<TimeSeriesData>, Failure>> getYearlyStockData() async {
    try {
      final response = await fetchNepseStockData();
      return response.fold(
        (successResponse) {
          final List<TimeSeriesData> yearlyStockData =
              successResponse.data.yearlyData;
          return Left(yearlyStockData);
        },
        (failureResponse) => Right(Failure.fromException(failureResponse)),
      );
    } catch (e) {
      return Right(Failure(e.toString(), FailureType.exception));
    }
  }
}
