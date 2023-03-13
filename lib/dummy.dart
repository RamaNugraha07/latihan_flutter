import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Dummy extends StatefulWidget {
  const Dummy({super.key});

  @override
  State<Dummy> createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  List _listdata = [];
  int status = 2;

  Future<List> getData() async {
  final response = await http.get(Uri.parse('http://192.168.1.28/latihan_flutter/sqlConnection/connection.php'));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}


  @override
  void initState() {
    super.initState();
    getData().then((data) {
      print(data);
    }).catchError((error) {
      print(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Text("body"),
    );
  }
  
}