import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../widgets/ListWidget.dart';

class ListState extends State<ListWidget> {
  var _members = [];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  _loadData() async {
    String dataURL = "https://api.github.com/orgs/raywenderlich/members";
    http.Response response = await http.get(dataURL);
    setState(() {
      _members = json.decode(response.body);
    });
  }

  @override
  void initState(){
    super.initState();
    _loadData();
  }
  
  Widget _buildRow(int i) {
  return Padding(
    padding: EdgeInsets.only(),
    child: ListTile(
      title: Text("${_members[i]["login"]}", style: _biggerFont),
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        backgroundImage: NetworkImage(_members[i]["avatar_url"])
      ),
    )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: _members.length,
        itemBuilder: (BuildContext context, int position) {
          return position.isOdd ? Divider() :  _buildRow(position ~/ 2);
      }),
    );
  }
}