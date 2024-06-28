import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import 'package:stock_demo_app/features/stock_chart/domain/nepse_mock_data_model.dart';

class AnimatedStockChart extends StatefulWidget {
  final NepseMockData oldData;
  final NepseMockData newData;
  final NepseTimeSeries currentIndex;

  const AnimatedStockChart({
    super.key,
    required this.oldData,
    required this.newData,
    required this.currentIndex,
  });

  @override
  State<AnimatedStockChart> createState() => _AnimatedStockChartState();
}

class _AnimatedStockChartState extends State<AnimatedStockChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant AnimatedStockChart oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.newData != widget.newData) {
      _controller.reset();
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: StockChart(
            stockData: widget.newData,
            currentIndex: widget.currentIndex,
          ),
        );
      },
    );
  }
}

class StockChart extends StatelessWidget {
  final NepseMockData stockData;
  const StockChart({
    super.key,
    required this.currentIndex,
    required this.stockData,
  });

  final NepseTimeSeries currentIndex;

  @override
  Widget build(BuildContext context) {
    final timeSeriesData = checkFilterAndShowStock(currentIndex, stockData);
    final timeSeries = _processTimeSeriesData(timeSeriesData, currentIndex);

    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          enabled: true,
          touchTooltipData: LineTouchTooltipData(
            tooltipRoundedRadius: 8,
            getTooltipColor: (LineBarSpot touchedBarSpot) =>
                const Color(0xff189905).withOpacity(0.2),
            getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
              return touchedBarSpots.map((barSpot) {
                final flSpot = barSpot;
                return LineTooltipItem(
                    'Rs ${flSpot.y}\n', const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            'Time:  ${DateFormat('y/M/d hh:mm:ss').format(timeSeriesData[timeSeries.indexOf(flSpot.x)].date)}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]);
              }).toList();
            },
          ),
        ),
        lineBarsData: [
          LineChartBarData(
              color: const Color(0xff189905),
              barWidth: 3,
              spots: [
                for (TimeSeriesData index in timeSeriesData)
                  FlSpot(
                    timeSeries[timeSeriesData.indexOf(index)].toDouble(),
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
            if (value >= timeSeriesData.first.index.toDouble()) {
              return true;
            } else {
              return false;
            }
          },
          drawVerticalLine: false,
        ),
        borderData: FlBorderData(
          show: false,
        ),
        titlesData: const FlTitlesData(
          show: false,
        ),
      ),
    );
  }

  List<double> _processTimeSeriesData(
      List<TimeSeriesData> timeSeriesData, NepseTimeSeries currentIndex) {
    var timeSeries;
    if (currentIndex == NepseTimeSeries.minute) {
      timeSeries = timeSeriesData.map((e) => e.date.minute.toDouble()).toList();
    } else if (currentIndex == NepseTimeSeries.hour) {
      timeSeries = timeSeriesData.map((e) => e.date.hour.toDouble()).toList();
    } else if (currentIndex == NepseTimeSeries.day) {
      timeSeries = timeSeriesData.map((e) => e.date.day.toDouble()).toList();
    } else if (currentIndex == NepseTimeSeries.month) {
      timeSeries = timeSeriesData.map((e) => e.date.month.toDouble()).toList();
    } else if (currentIndex == NepseTimeSeries.year) {
      timeSeries = timeSeriesData.map((e) => e.date.year.toDouble()).toList();
    }
    return timeSeries;
  }

  List<TimeSeriesData> checkFilterAndShowStock(
      NepseTimeSeries state, NepseMockData stockData) {
    switch (state) {
      case NepseTimeSeries.minute:
        return stockData.minuteData;
      case NepseTimeSeries.hour:
        return stockData.hourData;
      case NepseTimeSeries.day:
        return stockData.dayData;
      case NepseTimeSeries.month:
        return stockData.monthData;
      case NepseTimeSeries.year:
        return stockData.yearlyData;
      default:
        return stockData.minuteData;
    }
  }
}
