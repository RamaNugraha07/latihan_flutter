import 'package:flutter/material.dart';

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
          color: Color(0xFFDEE3F2),
          // width: 350,
          // height: 450,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(28)
          // ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 150, right: 150, bottom: 100),
              child: Image(
                image: AssetImage("images/logo.jpg"),
                width: 150,
                height: 100,
            ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50, bottom: 100),
              child: Text("PUSING PUSING TING TING",
              style: TextStyle(color: Colors.black))
              ),
          ],
        ),
      ),

    )
    );
  } 
}
