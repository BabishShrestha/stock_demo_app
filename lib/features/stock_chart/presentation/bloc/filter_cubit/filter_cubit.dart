import 'package:bloc/bloc.dart';
import 'package:stock_demo_app/features/stock_chart/domain/nepse_mock_data_model.dart';

class FilterStockTimeCubit extends Cubit<NepseTimeSeries> {
  FilterStockTimeCubit() : super(NepseTimeSeries.minute);
  void changeTimeSeries(NepseTimeSeries currentIndex) => emit(currentIndex);
}
