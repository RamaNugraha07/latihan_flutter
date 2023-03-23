
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ExpansionPanelDemo(),
      
      debugShowCheckedModeBanner: false,
    );
  }
}


class ExpansionPanelDemo extends StatefulWidget {
  const ExpansionPanelDemo({Key? key}) : super(key: key);

  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<Item> _books = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          
          padding: EdgeInsets.only(top: 50, bottom: 50),
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
      floatingActionButton:FloatingActionButton(
        
        onPressed:(){
          
        },
        backgroundColor:Color.fromRGBO(38, 20, 95, 1),
        child:const Icon(Icons.add),
      ),
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