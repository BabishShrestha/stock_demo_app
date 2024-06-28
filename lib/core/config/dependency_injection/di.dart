import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:stock_demo_app/core/config/dio/dio_client.dart';
import 'package:stock_demo_app/core/config/dio/dio_helper.dart';
import 'package:stock_demo_app/core/theme/bloc/theme_cubit.dart';
import 'package:stock_demo_app/features/stock_chart/data/stock_repo.dart';
import 'package:stock_demo_app/features/stock_chart/presentation/bloc/filter_cubit/filter_cubit.dart';
import 'package:stock_demo_app/features/stock_chart/presentation/bloc/stock_bloc/stock_bloc.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<DioClient>(
    () => DioClient(
      dio: getIt<Dio>(),
    ),
  );
  getIt.registerLazySingleton<DioHelper>(() => DioHelper());
  getIt.registerLazySingleton<StockRepo>(
    () => StockRepoImpl(
      dioHelper: getIt<DioHelper>(),
    ),
  );
  getIt.registerFactory<ThemeCubit>(() => ThemeCubit());
  getIt.registerFactory<FilterStockTimeCubit>(() => FilterStockTimeCubit());

  getIt.registerFactory<StockBloc>(
    () => StockBloc(stockRepo: getIt<StockRepo>()),
  );
}
