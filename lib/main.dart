import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/calculate_page.dart';
import 'package:flutter_calculator/pages/history_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorApp(),
      routes: {
        '/history': (context) => HistoryPage(),
      },
    );
  }
}
