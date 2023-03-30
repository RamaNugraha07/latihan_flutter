import 'dart:convert';
import 'dart:math';

import 'package:Sales/Models/api_response.dart';
import 'package:Sales/Models/constant.dart';
import 'package:Sales/inputCustomer.dart';
import 'package:flutter/material.dart';
import 'package:Sales/navbar.dart';
import 'package:http/http.dart' as http;

import 'Models/User.dart';

class Monitoring extends StatefulWidget {
  @override
  _Monitoring createState() => _Monitoring();
}

// class _Monitoring extends State<Monitoring> {
//   List _listData = [];
//   bool _isLoading = false;

//   Future<void> _getData() async {
//     try {
//       setState(() {
//         _isLoading = true;
//       });

//       final response =
//           await http.get(Uri.parse('http://127.0.0.1:8000/api/customer/index'));
//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         if (data is List) {
//           setState(() {
//             _listData = data;
//             _isLoading = false;
//           });
//         }
//       }
//     } catch (e) {
//       print(e);
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   void initState() {
//     _getData();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Monitoring'),
//       ),
//       body: _isLoading
//           ? Center(child: CircularProgressIndicator())
//           : ListView.builder(
//               itemCount: _listData.length,
//               itemBuilder: ((context, index) {
//                 return Card(
//                   child: ListTile(
//                     title: Text(_listData[index]['name']),
//                   ),
//                 );
//               }),
//             ),
//     );
//   }
// }





class _Monitoring extends State<Monitoring> {
  List _Listdata = [];

  Future _getdata() async {
    try {
      final response =
          await http.get(Uri.parse('http://127.0.0.1:8000/api/customer/index'));
      if (response.statusCode == 200) {
        print(response.body);
        final data = jsonDecode(response.body);
        // print(data);
        if (data is List) {
          setState(() {
            _Listdata = data;
          });
        }
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    _getdata();
    // print(_Listdata);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monitoring'),
      ),
      body: ListView.builder(
        itemCount: _Listdata.length,
        itemBuilder: ((context, index) {
          return Card(
            child: ListTile(
              title: Text(_Listdata[index]["status"]),
            ),
          );
        }),
      ),
    );
  }
}














//   List<Item> _books = generateItems(8);

//   Icon searchIcon = Icon(Icons.search, color: Colors.black);
//   Widget pageTitle = Text('Monitoring Customer', style: TextStyle(color: Colors.black));

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Color.fromRGBO(242, 241, 246, 1),
//         actions: <Widget>[
//           IconButton(
//             onPressed: (){
//               setState(() {
//                 if(this.searchIcon.icon == Icons.search) {
//                   this.searchIcon = Icon(Icons.cancel, color: Colors.black);
//                   this.pageTitle = TextField(
//                     textInputAction: TextInputAction.go);
//                 } else {
//                   this.searchIcon = Icon(Icons.search, color: Colors.black);
//                   this.pageTitle = Text('Monitoring Customer', style: TextStyle(color: Colors.black));
//                 }
//               });
//             },
//             icon: searchIcon
//           )
//         ],
//         title: pageTitle
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           color: Color.fromRGBO(242, 241, 246, 1),
//           padding: EdgeInsets.only(bottom: 50, top: 20),
//           child: 
//           Column(
//             children: [
//               Table(
//                 columnWidths: {
//                   0: FlexColumnWidth(3),
//                   1: FlexColumnWidth(3),
//                   2: FlexColumnWidth(3),
//                 },
//                 children: [
//                   TableRow(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left:4.0, right:4.0),
//                         child: Text("Nama", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left:4.0, right:4.0),
//                         child: Text("Tanggal", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left:4.0, right:4.0),
//                         child: Text("Status", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20,), 
//               Container(
//                 child: _buildPanel(),
//               ),// spacer 
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: Stack(
//         children: <Widget>[
//           Positioned( 
//             right: 25,
//             bottom: 25,
//             child : FloatingActionButton(
//               child: Icon(Icons.add),
//                 backgroundColor: Color.fromRGBO(38, 20, 95, 1),
//                 onPressed: (){}
//             )
//           )
//         ]
//       )
//     );
//   }

//   Widget _buildPanel() {
//     return Container(
//       decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(10),),
//       child:ExpansionPanelList(
//       expansionCallback: (int index, bool isExpanded) {
//         setState(() {
//           _books[index].isExpanded = !isExpanded;
//         });
//       },
//       children: _books.map<ExpansionPanel>((Item item) {
//         return ExpansionPanel(
//           headerBuilder: (BuildContext context, bool isExpanded) {
           
//             return Table(
//             columnWidths: {
//               0: FlexColumnWidth(3),
//               1: FlexColumnWidth(3),
//               2: FlexColumnWidth(3),
//             },
            
//             children: [
              
//               TableRow(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: Text("Alifia Putri Budiyanti"),
//                   ),
//                   Padding(
//                      padding: const EdgeInsets.all(4.0),
//                     child: Text("Alifia Putri"),
//                   ),
//                   Padding(
//                      padding: const EdgeInsets.all(4.0),
//                     child: Text("Alifia Putri"),
//                   ),
                 
                  
//                 ],
//               ),
//             ],
//           );
    
//           },
//           body: ListTile(
//             title: Text(item.expandedValue),
//           ),
//           isExpanded: item.isExpanded,
//         );
//       }).toList(),
      
      
//     ));
    
//   }
// }

// // stores ExpansionPanel state information
// class Item {
//   Item({
//     required this.expandedValue,
//     required this.headerValue,
//     this.isExpanded = false,
//   });

//   String expandedValue;
//   String headerValue;
//   bool isExpanded;
// }

// List<Item> generateItems(int numberOfItems) {
//   return List.generate(numberOfItems, (int index) {
//     return Item(
//       headerValue: 'Book $index',
//       expandedValue: 'Details for Book $index goes here',
//     );
//   });