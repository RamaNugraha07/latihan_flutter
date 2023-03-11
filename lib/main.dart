import 'package:flutter/material.dart';
import 'package:flutter_application/cons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),

    );
  }
}

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color.fromRGBO(222, 227, 242, 1),
          // width: 350,
          // height: 450,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(28)
          // ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100, right: 100, top: 120),
                child: Image(
                  image: AssetImage("images/logo.jpg"),
                  width: 150,
                  height: 100,
              ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 50, right: 240, bottom: 25),
                child: Center(
                child: Text(
                  "Masuk",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                ),
              ),

              TextField(
                decoration : InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "username"
                ), 
              ),
              SizedBox(height: 20,),

              TextField(
                decoration : InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: InkWell(onTap: (){
                    // ketika icon ditekan...
                  }, 
                  child: Icon(Icons.visibility_outlined),
                  ),
                  hintText: "password"
                ),
              ),

            ],
          ),
        ),
      ),

    )
    );
  } 
}
