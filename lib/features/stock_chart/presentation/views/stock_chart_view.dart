import 'package:flutter/material.dart';

class StockChartView extends StatelessWidget {
  const StockChartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Chart'),
      ),
      body: Center(
        child: Text('Stock Chart'),
      ),
    );
  }
}
