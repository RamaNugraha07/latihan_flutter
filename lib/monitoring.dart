import 'package:flutter/material.dart';
import 'package:Sales/navbar.dart';

class Monitoring extends StatefulWidget {

  @override
  _Monitoring createState() => _Monitoring();
}

class _Monitoring extends State<Monitoring> {
  List<Item> _books = generateItems(8);

  Icon searchIcon = Icon(Icons.search, color: Colors.black);
  Widget pageTitle = Text('Monitoring Customer', style: TextStyle(color: Colors.black));

  @override
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
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(242, 241, 246, 1),
          padding: EdgeInsets.only(bottom: 50),
          child: 
          Column(
            children: [
              Table(
                columnWidths: {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(3),
                  2: FlexColumnWidth(3),
                },
                children: [
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:4.0, right:4.0, ),
                        child: Text("Name",),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:4.0, right:4.0,),
                        child: Text("Age"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:4.0, right:4.0,),
                        child: Text("Gender"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,), 
              Container(
                child: _buildPanel(),
              ),// spacer 
            ],
          ),
        ),
      ),
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

  Widget _buildPanel() {
    return Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),),
      child:ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _books[index].isExpanded = !isExpanded;
        });
      },
      children: _books.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
           
                return Table(
            columnWidths: {
              0: FlexColumnWidth(3),
              1: FlexColumnWidth(3),
              2: FlexColumnWidth(3),
            },
            
            children: [
              
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Alifia Putri Budiyanti"),
                  ),
                  Padding(
                     padding: const EdgeInsets.all(4.0),
                    child: Text("Alifia Putri"),
                  ),
                  Padding(
                     padding: const EdgeInsets.all(4.0),
                    child: Text("Alifia Putri"),
                  ),
                 
                  
                ],
              ),
            ],
          );
    
          },
          body: ListTile(
            title: Text(item.expandedValue),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
      
      
    ));
    
  }
}

// stores ExpansionPanel state information
class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Book $index',
      expandedValue: 'Details for Book $index goes here',
    );
  });
}