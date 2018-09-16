import 'package:flutter/material.dart';
import './widgets/ListWidget.dart';
import 'string.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled=false;
  debugPaintPointersEnabled = true;
  debugPaintLayerBordersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      // showPerformanceOverlay: true,
      title: Strings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ListWidget(title: 'First Page'),
    );
  }
}
