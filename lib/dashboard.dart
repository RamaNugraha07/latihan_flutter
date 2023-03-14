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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)),
              elevation: 10,
              margin: const EdgeInsets.all(20),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset('lib/icons/input.png')),
                      Text('Input', style: TextStyle(fontSize: 15.0),),
                      
                    ],
                  ),
                ),
              ),

          ),

          Card(
            color: Color(0xFFDEE3F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)),
              elevation: 10,
              margin: const EdgeInsets.all(20),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset('lib/icons/upload.png')),
                      Text('Update', style: TextStyle(fontSize: 15.0),),
                      
                    ],
                  ),
                ),
              ),

          ),
          
          Card(
            color: Color(0xFFDEE3F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)),
              elevation: 10,
              margin: const EdgeInsets.all(20),
              child: InkWell(
                onTap: (){
                  // Navigator.push(
                  //   context, MaterialPageRoute(builder: (context) => Profile()),
                  //   );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset('lib/icons/persebaran.png')),
                      Text('Persebaran', style: TextStyle(fontSize: 15.0),),
                      
                    ],
                  ),
                ),
              ),

          ),

          Card(
            color: Color(0xFFDEE3F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)),
              elevation: 10,
              margin: const EdgeInsets.all(20),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset('lib/icons/lokasi.png')),
                      Text('Lokasi', style: TextStyle(fontSize: 15.0),),
                      
                    ],
                  ),
                ),
              ),

          ),

        ],
      ),
      ); 
  }
}