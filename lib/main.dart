import 'package:first_assignment/detail_page.dart';
import 'package:first_assignment/user.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

final String jsonplaceholder = "http://jsonplaceholder.typicode.com/users/";

Future<List<Users>> fetchInfo() async {
  List<Users> list;
  var res = await http.get(Uri.encodeFull(jsonplaceholder),
      headers: {"Accept": "application/json"});
  print(res.body);
  if (res.statusCode == 200) {
    List data = json.decode(res.body);
    list = data.map<Users>((json) => Users.fromJson(json)).toList();
  }
  print("List Size: ${list.length}");
  return list;
}

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Assignment"),
        ),
        body: FutureBuilder(
          future: fetchInfo(),
          builder: (context, snapshot) {
            return snapshot.data != null
                ? listViewWidget(snapshot.data)
                : Center(child: CircularProgressIndicator());
          }),

        );
  }

  Widget listViewWidget(List<Users> users) {
    return Container(
      child: ListView.builder(
          itemCount: 10,
          padding: const EdgeInsets.all(2.0),
          itemBuilder: (context, position) {
            return Card(
              child: ListTile(
                title: Text(
                  '${users[position].name}',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '${users[position].username}',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      ),
                ),
                onTap: (){
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPage(users[position])));
                },
              ),
            );
          }),
    );
  }
}
