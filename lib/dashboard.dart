import 'package:Sales/profile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Dashboard'),
      // ),
      body: Center(
        child: SizedBox(
        height: 600, //Atur ketinggian card
        
        child: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 15, // untuk mengatur jarak card horizontal
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
                      Text('Input Customer', style: TextStyle(fontSize: 15.0),),
                      
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
                      Text('Update Customer', style: TextStyle(fontSize: 15.0),),
                      
                    ],
                  ),
                ),
              ),

          ),

          // Card(
          //   color: Color(0xFFDEE3F2),
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(40)),
          //     elevation: 10,
          //     margin: const EdgeInsets.all(20),
          //     child: InkWell(
          //       onTap: (){},
          //       splashColor: Colors.lightBlueAccent,
          //       child: Center(
          //         child: Column(
          //           mainAxisSize: MainAxisSize.min,
          //           children: <Widget>[
          //             ClipRRect(
          //               borderRadius: BorderRadius.circular(5.0),
          //               child: Image.asset('lib/icons/verif.png')),
          //             Text('Verifikasi', style: TextStyle(fontSize: 15.0),),
                      
          //           ],
          //         ),
          //       ),
          //     ),

          // ),
          
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
                      Text('Persebaran Brosur', style: TextStyle(fontSize: 15.0),),
                      
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
                      Text('Lokasi Sales', style: TextStyle(fontSize: 15.0),),
                      
                    ],
                  ),
                ),
              ),

          ),

        ],
        ),
      ),
      ),
      ); 
  }
}