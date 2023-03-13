import 'package:Sales/profile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            color: Color(0xFFDEE3F2),
            elevation: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset('lib/icons/input.png')),
                      Text('Input', style: TextStyle(fontSize: 15.0),),
                      
                    ],
                  ),
                ),
              ),

          ),

          Card(
            color: Color(0xFFDEE3F2),
            margin: const EdgeInsets.all(4),
            child: InkWell(
              onTap: (){},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.home),
                    ],
                  ),
                ),
            ),

          )
        ],
      ),
      ); 
  }
}