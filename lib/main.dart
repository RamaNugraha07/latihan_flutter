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
          color: Color(0xFFDEE3F2),
          // width: 350,
          // height: 450,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(28)
          // ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 120, right: 120, bottom: 250),
                child: Image(
                  image: AssetImage("images/logo.jpg"),
                  width: 150,
                  height: 100,
              ),
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Login", style: textTextStyle.copyWith(
                  fontSize: 25,
                  ),
                ),
                SizedBox()
              ],
            )
            ],
          ),
        ),
      ),

    )
    );
  } 
}
