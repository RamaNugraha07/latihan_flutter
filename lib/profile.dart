import 'package:Sales/dashboard.dart';
import 'package:flutter/material.dart';

class  profile extends StatelessWidget{
  const profile ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Dashboard()),
            );
          },
        );
}
}