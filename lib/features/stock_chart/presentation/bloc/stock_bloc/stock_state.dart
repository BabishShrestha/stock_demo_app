import 'package:stock_demo_app/features/stock_chart/domain/nepse_mock_data_model.dart';

sealed class StockState {}

class StockInitial extends StockState {}

class StockLoading extends StockState {}

class StockLoaded extends StockState {
  final NepseMockDataModel stockData;

  StockLoaded({required this.stockData});
}

class StockError extends StockState {
  final String message;

  StockError({required this.message});
}

class StockNoData extends StockState {
  final String message;

  StockNoData({required this.message});
}
