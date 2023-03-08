import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50, bottom: 100),
              child: Image(
                image: AssetImage("images/logo.jpg"),
                width: 150,
                height: 80,
            ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50, bottom: 100),
              child: Text("PUSING PUSING"),
              ),
          ],
        ),
      ),
    );
  } 
}

// class logo extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Center(
//         child: Container(
//         child: Image(
//           image: AssetImage("images/logo.jpg"),
//         ),  
//         ),
//       ),
//     );
//   }

// }
