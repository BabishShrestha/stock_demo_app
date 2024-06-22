import 'package:flutter/material.dart';

class StockChartView extends StatelessWidget {
  const StockChartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock Chart'),
      ),
      body: const Column(
        children: [
          Text('Stock Chart'),
        ],
      ),
    );
  }
}
