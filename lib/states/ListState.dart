import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../widgets/ListWidget.dart';
<<<<<<< HEAD
import '../widgets/MemberWidget.dart';

class ListState extends State<ListWidget> {
  var _members = {};
  final _biggerFont = const TextStyle(fontSize: 18.0);

  _loadData() async {
    String dataURL = "https://rickandmortyapi.com/api/character/";
    http.Response response = await http.get(dataURL);
    setState(() {
      _members = json.decode(response.body);
      print(_members);
    });
  }

  _pushMember(String string) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => MemberWidget(string)
      )
    );
  }

=======

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

>>>>>>> f9a2ae78f268f75417afa5cc1c4fd46479ffdde0
  @override
  void initState(){
    super.initState();
    _loadData();
  }
  
  Widget _buildRow(int i) {
  return Padding(
    padding: EdgeInsets.only(),
    child: ListTile(
<<<<<<< HEAD
      title: Text(_members['results'][i]['name'], style: _biggerFont),
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        backgroundImage: NetworkImage(_members['results'][i]['image'])
      ),
      onTap: () {
        _pushMember(_members['results'][i]['image']);
      },
=======
      title: Text("${_members[i]["login"]}", style: _biggerFont),
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        backgroundImage: NetworkImage(_members[i]["avatar_url"])
      ),
>>>>>>> f9a2ae78f268f75417afa5cc1c4fd46479ffdde0
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
<<<<<<< HEAD
        itemCount: _members['results'].length,
=======
        itemCount: _members.length,
>>>>>>> f9a2ae78f268f75417afa5cc1c4fd46479ffdde0
        itemBuilder: (BuildContext context, int position) {
          return position.isOdd ? Divider() :  _buildRow(position ~/ 2);
      }),
    );
  }
}