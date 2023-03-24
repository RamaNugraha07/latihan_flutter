import 'dart:js';

import 'package:Sales/Models/Customer.dart';
import 'package:Sales/Models/api_response.dart';
import 'package:Sales/services/customer_services.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../navbar.dart';



const List<String> list = <String>['Perempuan', 'Laki-Laki'];
const List<String> statusAwal=<String>['Ragu-Ragu','Closing','Q&A','Canceled','Uncover'];
const List<String> metode=<String>['chat','ketemu'];

class inputCustomer extends StatefulWidget {
  @override
  _inputCustomer createState() => _inputCustomer();
}

class _inputCustomer extends State<inputCustomer> {
 
  String? selectedGender;
  String? selectedMetode;
  String? selectedArea;
  String? selectedStatus;

  
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  
  TextEditingController txtsales_id = TextEditingController();
  TextEditingController txtarea_id = TextEditingController();
  TextEditingController txtnama = TextEditingController();
  TextEditingController txtnomorhp = TextEditingController();
  TextEditingController txtalamat = TextEditingController();
  TextEditingController txtjeniskelamin = TextEditingController();
  TextEditingController txtmetode = TextEditingController();
  TextEditingController txtArea = TextEditingController();
  TextEditingController txtstatusawal = TextEditingController();

  
  
  void _inputUser() async{
    ApiResponse response = await created_user(
      txtsales_id.text,
      txtarea_id.text,
      txtnama.text, 
      txtnomorhp.text, 
      txtalamat.text, 
      txtjeniskelamin.text, 
      txtmetode.text, 
      txtArea.text, 
      txtstatusawal.text);
     if(response.error == null) {
      _saveAndRedirectToDashboard(response.data as Customer);
    }
    else {
      ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(
        content: Text('${response.error}'),
      ));
    }
  }

  void _saveAndRedirectToDashboard(Customer customer) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('sales_id', customer.sales_id ?? '');
    await pref.setString('area_id', customer.area_id ?? '');
    await pref.setString('name', customer.name ?? '');
    await pref.setString('contact', customer.contact ?? '');
    await pref.setString('address', customer.address ?? '');
    await pref.setString('gender', customer.gender ?? '');
    await pref.setString('status', customer.status ?? '');
    await pref.setString('approach', customer.approach ?? '');
    Navigator.of(context as BuildContext).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => BottomNaviBar()),
       (route) => false);
  }

  Widget build(BuildContext context) {
     Color customColor = Color.fromRGBO(38, 20, 95, 1.0);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(title: const Text('Input Customer')),
        body:SingleChildScrollView(
          child: Form(
          key: formKey,
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [ 
           
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child:
              Text("nama"),
            ),   
            TextField(
              decoration: InputDecoration(
               hintText:"Ex: Alifia Putri Budiyanti",
                border: OutlineInputBorder(),
              ),
            ), 
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
              child:
              Text("nomor handphone"),
              
              
            ),
            
             TextField(
              decoration: InputDecoration(
               hintText:"Ex: 08961686870",
                border: OutlineInputBorder(),
                
                
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
              child:
              Text("Alamat"),
              
              
            ),
            TextField(
              decoration: InputDecoration(
               hintText:"Ex: Jalan Kertosentono no 57B",
                border: OutlineInputBorder(),
                
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
              child:
              Text("Jenis Kelamin"),
              
              
            ),
            TextField(
              decoration: InputDecoration(
               hintText:"Laki-laki / perempuan",
                border: OutlineInputBorder(),
                
                
              ),
            ),
          
            
            

            
               Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
              child:
              Text("Metode"),
            ),   
            TextField(
              decoration: InputDecoration(
               hintText:"online / offline",
                border: OutlineInputBorder(),
                
                
              ),
            ),
            
             Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
              child:
              Text("Area"),
            ),   
            
           TextField(
              decoration: InputDecoration(
               hintText:"sumbersari",
                border: OutlineInputBorder(),
                
                
              ),
            ),
              
             Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
              child:
              Text("Status Awal"),
              
              
            ),
            
             TextField(
              decoration: InputDecoration(
               hintText:"Q&A",
                border: OutlineInputBorder(),
                
                
              ),
            ),
                
              
              
            
              
            ElevatedButton(
                onPressed: () {
                  if(formKey.currentState!.validate()){
                      _inputUser();
                    }
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const BottomNaviBar()), 
                      // );
                  },
                child: Text('Submit'),
              
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(38, 20, 95, 1),
                  minimumSize: Size(100, 50),
                ),
              ),
            
       
          
            
           
        ]
      )
        )
    ))));
  }
  
}


