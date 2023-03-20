import 'dart:async';

import 'package:Sales/Models/api_response.dart';
import 'package:Sales/Models/constant.dart';
import 'package:Sales/dashboard.dart';
import 'package:Sales/warna/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Sales/services/user_services.dart';
import 'package:Sales/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _loadUserInfo() async {
    String token = await getToken();
    if (token == "") {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Login()),
       (route) => false);
    } else {
      ApiResponse response = await getUserDetails();
      if (response.error == null) {
         Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Dashboard()),
       (route) => false);
      }
      else if (response.error == unautorized) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Login()),
       (route) => false);
      }
      else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('${response.error}'),
        ));
      }
    }
  }

  @override
  void initState() {
    _loadUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            abuColors,],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter
            )
        ),
        child: Image.asset("images/glc.jpg"),
      ),
    );
  }
}