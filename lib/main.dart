import 'package:flutter/material.dart';
import 'package:stock_demo_app/features/stock_chart/presentation/views/stock_chart_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: StockChartView());
  }
}
