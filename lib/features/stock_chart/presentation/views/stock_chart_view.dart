import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_demo_app/core/config/dependency_injection/di.dart';
import 'package:stock_demo_app/features/stock_chart/domain/nepse_mock_data_model.dart';
import 'package:stock_demo_app/features/stock_chart/presentation/bloc/filter_cubit/filter_cubit.dart';
import 'package:stock_demo_app/features/stock_chart/presentation/bloc/stock_bloc/stock_bloc.dart';
import 'package:stock_demo_app/features/stock_chart/presentation/bloc/stock_bloc/stock_event.dart';
import 'package:stock_demo_app/features/stock_chart/presentation/bloc/stock_bloc/stock_state.dart';

import 'widgets/widgets.dart';

class StockChartView extends StatefulWidget {
  const StockChartView({super.key});

  @override
  State<StockChartView> createState() => _StockChartViewState();
}

class _StockChartViewState extends State<StockChartView> {
  List<TimeSeriesData> timeSeriesData = [];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<StockBloc>(context).add(FetchNepseStockData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock Chart'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<StockBloc, StockState>(
              builder: (context, state) {
                if (state is StockLoaded) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.stockData.data.marketSumary.todayNepse,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "📈 ${state.stockData.data.marketSumary.change.toString()} (${state.stockData.data.marketSumary.percentChange * 100}%)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: state.stockData.data.marketSumary.change > 0
                              ? Colors.green
                              : Colors.red,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  );
                } else if (state is StockError) {
                  return Center(child: Text('Error: ${state.message}'));
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: BlocConsumer<StockBloc, StockState>(
                listener: (context, state) {
                  if (state is StockError) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
                bloc: BlocProvider.of<StockBloc>(context),
                builder: (context, state) {
                  if (state is StockLoaded) {
                    return StockChart(
                      stockData: state.stockData.data,
                      currentIndex:
                          BlocProvider.of<FilterStockTimeCubit>(context).state,
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                  // : const Center(child: CircularProgressIndicator());
                },
              ),
            ),
            BlocConsumer<FilterStockTimeCubit, NepseTimeSeries>(
                listener: (context, state) {
              BlocProvider.of<StockBloc>(context).add(FetchNepseStockData());
            }, builder: (context, timeSeries) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: NepseTimeSeries.values.map((series) {
                  return CustomChoiceChip(
                    labelText: checkFilterAndShowLabel(series),
                    selected: timeSeries == series,
                    onSelected: (value) {
                      if (value) {
                        BlocProvider.of<FilterStockTimeCubit>(context)
                            .changeTimeSeries(series);
                      }
                    },
                  );
                }).toList(),
              );
            }),
          ],
        ),
      ),
    );
  }

  checkFilterAndShowLabel(NepseTimeSeries series) {
    switch (series) {
      case NepseTimeSeries.minute:
        return '1Min';

      case NepseTimeSeries.hour:
        return '1Hr';
      case NepseTimeSeries.day:
        return '1D';
      case NepseTimeSeries.month:
        return '1M';
      case NepseTimeSeries.year:
        return '1Y';
    }
  }
}
