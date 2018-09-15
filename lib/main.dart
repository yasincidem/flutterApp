import 'package:flutter/material.dart';
import './widgets/ListWidget.dart';
import 'string.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // showPerformanceOverlay: true,
      title: Strings.appTitle,
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new ListWidget(title: 'First Page'),
    );
  }
}
