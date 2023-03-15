import 'package:Sales/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:Sales/dashboard.dart';

class Profile extends StatelessWidget{
  const Profile ({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( 
        color: Color.fromRGBO(242, 241, 246, 1),
        child: Padding(
          padding: EdgeInsets.only(top: 50, bottom: 50), 
          child: Column( 
            children:[
              Container(
                padding: EdgeInsets.only(right: 25, left: 25),
                height: 64,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage('images/default-pp.png'),
                    )]),
                    SizedBox(width: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Sales Dua', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Text('SL0002', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(width: 120),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                            child: Container(
                              width: 75,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromRGBO(254, 164, 30, 1),
                              ),
                              child: Center( 
                                child: Text('Level 2', style: TextStyle(color: Colors.white),)
                            )
                          )
                        )
                      ]
                    )
                  ]
                )
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.only(right: 0, left: 0),
                width: MediaQuery.of(context).size.width,
                height: 40,
                color: Color.fromRGBO(222, 227, 242, 1),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 25),
                    Text('Menu', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,))
                  ]
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.only(right: 25, left: 25),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(Icons.maps_home_work),
                      SizedBox(width: 10),
                      Text('Lokasi Sales', style: TextStyle(fontSize: 15))
                    ]
                  ),
                ),
              ),
              SizedBox(height:20),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.only(right: 25, left: 25),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(Icons.map),
                      SizedBox(width: 10),
                      Text('Persebaran Brosur', style: TextStyle(fontSize: 15))
                    ]
                  )
                )
              ),
              SizedBox(height: 40),
              Container(
                child: Container(
                  padding: EdgeInsets.only(right: 0, left: 0),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  color: Color.fromRGBO(222, 227, 242, 1),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      Text('Lainnya', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,))
                    ]
                  )
                )
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.only(right: 25, left: 25),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(Icons.info),
                      SizedBox(width: 10),
                      Text('Tentang', style: TextStyle(fontSize: 15))
                    ]
                  ),
                ),
              ),
              SizedBox(height: 20),
                InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.only(right: 25, left: 25),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(Icons.book),
                      SizedBox(width: 10),
                      Text('Buku Panduan', style: TextStyle(fontSize: 15))
                    ]
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.only(right: 25, left: 25),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(Icons.key),
                      SizedBox(width: 10),
                      Text('Ganti Password', style: TextStyle(fontSize: 15))
                    ]
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){
                  showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Konformasi Dulu'),
                      content: Text("Yakin mau keluar?"),
                      actions: [
                        ElevatedButton(
                          child: Text("Tidak"),
                          onPressed: () => Navigator.pop(context),
                        ),
                        ElevatedButton(
                          child: Text('Iya'),
                          onPressed: () {
                            // Action jika tombol Iya ditekan
                            Navigator.pop(context);
                            SystemNavigator.pop();
                          }
                        ),
                      ],
                    );
                  },
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(right: 25, left: 25),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(Icons.logout_rounded),
                      SizedBox(width: 10),
                      Text('Keluar', style: TextStyle(fontSize: 15))
                    ]
                  ),
                ),
              ),
            ] 
          )
        ),
      ),
    );
  }
}