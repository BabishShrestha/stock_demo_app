import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_demo_app/features/stock_chart/data/stock_repo.dart';
import 'package:stock_demo_app/features/stock_chart/domain/nepse_mock_data_model.dart';

class StockChartView extends StatefulWidget {
  const StockChartView({super.key});

  @override
  State<StockChartView> createState() => _StockChartViewState();
}

class _StockChartViewState extends State<StockChartView> {
  late Future<dynamic> _nepseStockDataFuture;
  @override
  void initState() {
    super.initState();
    _nepseStockDataFuture = StockRepoImpl().getMinutelyStockData();
  }

  NepseTimeSeries currentIndex = NepseTimeSeries.minute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock Chart'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          FutureBuilder(
              future: _nepseStockDataFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                if (snapshot.hasData) {
                  final timeSeriesData =
                      snapshot.data.fold((l) => l, (r) => 'null');
                  var timeSeries;
                  if (currentIndex == NepseTimeSeries.minute) {
                    timeSeries =
                        timeSeriesData.map((e) => e.date.minute).toList();
                  } else if (currentIndex == NepseTimeSeries.hour) {
                    timeSeries =
                        timeSeriesData.map((e) => e.date.hour).toList();
                  } else if (currentIndex == NepseTimeSeries.day) {
                    timeSeries = timeSeriesData.map((e) => e.date.day).toList();
                  } else if (currentIndex == NepseTimeSeries.month) {
                    timeSeries =
                        timeSeriesData.map((e) => e.date.month).toList();
                  } else if (currentIndex == NepseTimeSeries.yearly) {
                    timeSeries =
                        timeSeriesData.map((e) => e.date.year).toList();
                  }

                  log('${currentIndex.name}: ${timeSeriesData.length}');
                  return Expanded(
                    child: LineChart(
                      LineChartData(
                        lineBarsData: [
                          LineChartBarData(
                              color: const Color(0xff189905),
                              barWidth: 3,
                              showingIndicators: [
                                for (TimeSeriesData index in timeSeriesData)
                                  index.index.toInt()
                              ],
                              spots: [
                                for (TimeSeriesData index in timeSeriesData)
                                  FlSpot(
                                    timeSeries[timeSeriesData.indexOf(index)]
                                        .toDouble(),
                                    index.index.toDouble(),
                                  ),
                              ],
                              dotData: const FlDotData(
                                show: false,
                              )),
                        ],
                        gridData: FlGridData(
                          show: true,
                          drawHorizontalLine: true,
                          checkToShowHorizontalLine: (value) {
                            // show horizontal line for average y value
                            if (value ==
                                timeSeriesData.first.index.toDouble()) {
                              return true;
                            } else {
                              return false;
                            }
                          },
                          drawVerticalLine: false,
                        ),
                      ),
                    ),
                  );
                }
                return const SizedBox();
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomChoiceChip(
                labelText: '1Min',
                selected: currentIndex == NepseTimeSeries.minute,
                onSelected: (value) {
                  setState(() {
                    currentIndex = NepseTimeSeries.minute;
                    _nepseStockDataFuture =
                        StockRepoImpl().getMinutelyStockData();
                  });
                },
              ),
              CustomChoiceChip(
                labelText: '1Hr',
                selected: currentIndex == NepseTimeSeries.hour,
                onSelected: (value) {
                  setState(() {
                    currentIndex = NepseTimeSeries.hour;
                    _nepseStockDataFuture =
                        StockRepoImpl().getHourlyStockData();
                  });
                },
              ),
              CustomChoiceChip(
                labelText: '1D',
                selected: currentIndex == NepseTimeSeries.day,
                onSelected: (value) {
                  setState(() {
                    currentIndex = NepseTimeSeries.day;
                    _nepseStockDataFuture = StockRepoImpl().getDailyStockData();
                  });
                },
              ),
              CustomChoiceChip(
                labelText: '1M',
                selected: currentIndex == NepseTimeSeries.month,
                onSelected: (value) {
                  setState(() {
                    currentIndex = NepseTimeSeries.month;
                    _nepseStockDataFuture =
                        StockRepoImpl().getMonthlyStockData();
                  });
                },
              ),
              CustomChoiceChip(
                labelText: '1Y',
                selected: currentIndex == NepseTimeSeries.yearly,
                onSelected: (value) {
                  setState(() {
                    currentIndex = NepseTimeSeries.yearly;
                    _nepseStockDataFuture =
                        StockRepoImpl().getYearlyStockData();
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomChoiceChip extends StatelessWidget {
  final Function(bool)? onSelected;
  final bool selected;
  final String labelText;

  const CustomChoiceChip(
      {super.key,
      this.onSelected,
      required this.selected,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      showCheckmark: false,
      label:
          Text(labelText, style: const TextStyle(fontWeight: FontWeight.bold)),
      selectedColor: const Color(0xff5EFBDC),
      backgroundColor: Colors.white,
      // no border
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Colors.transparent,
          )),

      selected: selected,
      onSelected: onSelected,
    );
  }
}
