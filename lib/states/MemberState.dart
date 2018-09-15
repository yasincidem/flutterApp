import 'package:flutter/material.dart';
import '../widgets/MemberWidget.dart';

class MemberState extends State<MemberWidget> {
  final String url;

  MemberState(this.url);

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(16.0),
        child: new Image.network(url)
      )
    );
  }
}