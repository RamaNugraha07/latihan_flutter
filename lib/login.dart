import 'package:Sales/Models/api_response.dart';
import 'package:Sales/dashboard.dart';
import 'package:Sales/navbar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Sales/services/user_services.dart';
import 'package:Sales/Models/User.dart';

import 'package:bcrypt/bcrypt.dart';

class Login extends StatefulWidget{  
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  void _loginUser() async {
    // final String hashed = BCrypt.hashpw(txtPassword.text, BCrypt.gensalt());
    ApiResponse response = await login(txtUsername.text, txtPassword.text);
    if(response.error == null) {
      _saveAndRedirectToDashboard(response.data as User);
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('${response.error}'),
      ));
    }
  }

  void _saveAndRedirectToDashboard(User user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', user.token ?? '');
    await pref.setString('user', user.username ?? '');
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => BottomNaviBar()),
       (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
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

              TextFormField(
                controller: txtUsername,
                validator: (v) => v!.isEmpty ? 'aaa' : null,
                decoration : InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "username"
                ),

              ),
              SizedBox(height: 20,),

              TextFormField(
                obscureText: true,
                controller: txtPassword,
                validator: (v) => v!.isEmpty ? 'aaa' : null,
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
              SizedBox(height: 20,),
  
              Container(
                // padding: EdgeInsets.only(top: 50, right: 240),
                width:  200,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(38, 20, 95, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  //Untuk melakukan next page atau MultiPage
                  onPressed: () {
                    if(formKey.currentState!.validate()){
                      _loginUser();
                    }
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const BottomNaviBar()), 
                      // );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),

                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    )
    );
  }
}