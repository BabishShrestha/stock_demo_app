import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_demo_app/features/stock_chart/data/stock_repo.dart';
import 'package:stock_demo_app/features/stock_chart/presentation/bloc/stock_bloc/stock_event.dart';
import 'package:stock_demo_app/features/stock_chart/presentation/bloc/stock_bloc/stock_state.dart';

class StockBloc extends Bloc<StockEvent, StockState> {
  final StockRepo stockRepo;
  StockBloc({required this.stockRepo}) : super(StockInitial()) {
    on<FetchNepseStockData>(
      (event, emit) async {
        emit(StockLoading());
        try {
          final stockData = await stockRepo.fetchNepseStockData();
          stockData.fold(
              (l) => l.data.minuteData.isNotEmpty
                  ? emit(StockLoaded(stockData: l))
                  : emit(StockNoData(message: 'No data found')),
              (r) => emit(StockError(message: r.toString())));
        } catch (e) {
          emit(StockError(message: e.toString()));
        }
      },
    );
  }
}
