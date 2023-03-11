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
  int status = 0;

  Future _getData() async {
    try {
      final response = await http.get(
        Uri.parse('http://192.168.1.20/latihan_flutter/sqlConnection/connection.php'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          _listdata = data;
        });
      }
      status = response.statusCode;
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    _getData();
    print(_listdata);
    print("list data : " + status.toString());
    super.initState();
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