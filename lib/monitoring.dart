import 'package:flutter/material.dart';
import 'package:Sales/navbar.dart';

class Monitoring extends StatefulWidget {
  @override
  _Monitoring createState() => _Monitoring();
}

class _Monitoring extends State<Monitoring>{
  

  Icon searchIcon = Icon(Icons.search, color: Colors.black);
  Widget pageTitle = Text('Monitoring Customer', style: TextStyle(color: Colors.black));

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(242, 241, 246, 1),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              setState(() {
                if(this.searchIcon.icon == Icons.search) {
                  this.searchIcon = Icon(Icons.cancel, color: Colors.black);
                  this.pageTitle = TextField(
                    textInputAction: TextInputAction.go);
                } else {
                  this.searchIcon = Icon(Icons.search, color: Colors.black);
                  this.pageTitle = Text('Monitoring Customer', style: TextStyle(color: Colors.black));
                }
              });
            },
            icon: searchIcon
          )
        ],
        title: pageTitle
      ),
      body: Container(
        color: Color.fromRGBO(242, 241, 246, 1),
        child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: DataTable(
              columns: [
                DataColumn(label: Text('Nama')),
                DataColumn(label: Text('Tanggal')),
                DataColumn(label: Text('Status')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Awol')),
                  DataCell(Text('22/03/2023')),
                  DataCell(Text('Alhamdulillah Hidup')),
                ])]))])),
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned( 
            right: 25,
            bottom: 25,
            child : FloatingActionButton(
              child: Icon(Icons.add),
                backgroundColor: Color.fromRGBO(38, 20, 95, 1),
                onPressed: (){}
            )
          )
        ]
      )
    );
  }
}