import 'package:Sales/dashboard.dart';
import 'package:Sales/dummy.dart';
import 'package:Sales/login.dart';
import 'package:Sales/pages/splaash_page.dart';
import 'package:Sales/profile.dart';
import 'package:flutter/material.dart';
import 'package:Sales/cons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),

    );
  }
  
}
