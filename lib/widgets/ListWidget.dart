import 'package:flutter/material.dart';
import '../states/ListState.dart';

class ListWidget extends StatefulWidget {
  ListWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  createState() => ListState();
}