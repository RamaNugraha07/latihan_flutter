import 'package:Sales/profile.dart';
import 'package:flutter/material.dart';

class GantiPassword extends StatefulWidget {
  @override
  _GantiPassword createState() => _GantiPassword();
}

class _GantiPassword extends State<GantiPassword>{
  bool _isObscure = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ganti Password', style: TextStyle(color: Colors.black),),
        backgroundColor: Color.fromRGBO(242, 241, 246, 1),
        leading: BackButton(color: Colors.black),
        elevation: 0,
      ),
      body: Container(
        color : Color.fromRGBO(242, 241, 246, 1),
        padding: EdgeInsets.all(25),
          child: ListView(
            children : [
              Container(
                alignment: Alignment.centerLeft,
                height: 35,
                child: Text(
                  'Password Lama', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                height: 75,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    suffixIcon: IconButton(
                      icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: (){
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }
                    )
                  ),  
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  }
                )
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                height: 35,
                child: Text(
                  'Password Baru', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                height: 75,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    suffixIcon: IconButton(
                      icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: (){
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }
                    )
                  ),  
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  }
                )
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                height: 35,
                child: Text(
                  'Konfirmasi Password Baru', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                height: 75,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    suffixIcon: IconButton(
                      icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: (){
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }
                    )
                  ),  
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  }
                )
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => Profile()
                    ),
                  );
                },
                child : Text('Submit'),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 45),
                  backgroundColor: Color.fromRGBO(38, 20, 95, 1)
                ),
              )
            ]
      )
      ));
  }
}