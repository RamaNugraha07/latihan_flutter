import 'dart:js';

import 'package:Sales/Models/Customer.dart';
import 'package:Sales/Models/api_response.dart';
import 'package:Sales/services/customer_services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../navbar.dart';



const List<String> list = <String>['Perempuan', 'Laki-Laki'];
const List<String> statusAwal=<String>['Ragu-Ragu','Closing','Q&A','Canceled','Uncover'];
const List<String> metode=<String>['chat','ketemu'];

class inputCustomer extends StatefulWidget {
  @override
  _inputCustomer createState() => _inputCustomer();
}

class _inputCustomer extends State<inputCustomer> {
  
  final formKey = GlobalKey<FormState>();
  
  TextEditingController txtsales_id = TextEditingController();
  TextEditingController txtarea_id = TextEditingController();
  TextEditingController txtnama = TextEditingController();
  TextEditingController txtnomorhp = TextEditingController();
  TextEditingController txtalamat = TextEditingController();
  TextEditingController txtjeniskelamin = TextEditingController();
  TextEditingController txtmetode = TextEditingController();
  TextEditingController txtArea = TextEditingController();
  TextEditingController txtstatusawal = TextEditingController();
  _simpan(){
    final respone = await http.post(
      Uri.parse('http://127.0.0.1:8000/api/customer/add'),
      // Uri.parse('http://103.184.19.7:8080/api/customer/add'),
      body: {
        'nama' : txtnama.text,
        'nomor handphone' : txtnomorhp.text,
        
      }
  }

  @override
  Widget build(BuildContext context) {
     Color customColor = Color.fromRGBO(38, 20, 95, 1.0);
      return Scaffold(
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
            TextFormField(
              controller: txtnama,
              decoration: InputDecoration(
               hintText:"Ex: Alifia Putri Budiyanti",
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Nama Tidak Boleh Kosong';
                }
              }
            ), 

            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
              child:
              Text("nomor handphone"),
              
              
            ),
            
             TextFormField(
              controller: txtnomorhp,
              decoration: InputDecoration(
               hintText:"Ex: 08961686870",
                border: OutlineInputBorder(),
                
                
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Nomer HP Tidak Boleh Kosong';
                }
              }
            ),
             Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
              child:
              Text("Alamat"),
              
              
            ),
            TextFormField(
              controller: txtalamat,
              decoration: InputDecoration(
               hintText:"Ex: Jalan Kertosentono no 57B",
                border: OutlineInputBorder(),
                
                
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Alamat Tidak Boleh Kosong';
                }
              }
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
              child:
              Text("Jenis Kelamin"),
              
              
            ),
            TextFormField(
              controller: txtjeniskelamin,
              decoration: InputDecoration(
               hintText:"Laki-laki / perempuan",
                border: OutlineInputBorder(),
                
                
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Jenis Kelamin Tidak Boleh Kosong';
                }
              }
            ),
          
            
            

            
               Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
              child:
              Text("Metode"),
            ),   
            TextFormField(
              controller: txtmetode,
              decoration: InputDecoration(
               hintText:"online / offline",
                border: OutlineInputBorder(),
                
                
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Metode Tidak Boleh Kosong';
                }
              }
            ),
            
             Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
              child:
              Text("Area"),
            ),   
            
           TextFormField(
            controller: txtArea,
              decoration: InputDecoration(
               hintText:"sumbersari",
                border: OutlineInputBorder(),
                
                
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Area Tidak Boleh Kosong';
                }
              }
            ),
              
             Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
              child:
              Text("Status Awal"),
              
              
            ),
            
             TextFormField(
              controller: txtstatusawal,
              decoration: InputDecoration(
               hintText:"Q&A",
                border: OutlineInputBorder(),
                
                
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Status Tidak Boleh Kosong';
                }
              }
            ),
                
              
              
            
              
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    _simpan();
                  }
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
          ),
    ));
  }
  
}
















// import 'package:flutter/material.dart';



// const List<String> list = <String>['Perempuan', 'Laki-Laki'];
// const List<String> statusAwal=<String>['Ragu-Ragu','Closing','Q&A','Canceled','Uncover'];
// const List<String> metode=<String>['chat','ketemu'];

// class inputCustomer extends StatelessWidget {
//   const inputCustomer({super.key});

//   Widget build(BuildContext context) {
//      Color customColor = Color.fromRGBO(38, 20, 95, 1.0);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:Scaffold(
//         appBar:AppBar(title: const Text('Input Customer')),
//         body:SingleChildScrollView(
//         child:Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [ 
           
//             Padding(
//               padding: const EdgeInsets.only(bottom: 10.0),
//               child:
//               Text("nama"),
//             ),   
//             TextField(
//               decoration: InputDecoration(
//                hintText:"Ex: Alifia Putri Budiyanti",
//                 border: OutlineInputBorder(),
//               ),
//             ), 
//             Padding(
//               padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
//               child:
//               Text("nomor handphone"),
              
              
//             ),
            
//              TextField(
//               decoration: InputDecoration(
//                hintText:"Ex: 08961686870",
//                 border: OutlineInputBorder(),
                
                
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
//               child:
//               Text("Alamat"),
              
              
//             ),
//             TextField(
//               decoration: InputDecoration(
//                hintText:"Ex: Jalan Kertosentono no 57B",
//                 border: OutlineInputBorder(),
                
                
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 10.0, top:10.0),
//               child:
//               Text("Jenis Kelamin"),
              
              
//             ),
            
          
            
            

//             Container(
//             padding: const EdgeInsets.only(bottom: 10.0,), 
//             child:DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText:"Pilih Salah Satu",
//                 ),
//                 items: ['Perempuan', 'Laki-Laki']
//                 .map((String value) => DropdownMenuItem<String>(
//                  value: value,
//                  child: Text(value),
//                 ))
//                 .toList(),
//                 onChanged: (String? value) {
//                   print('Selected: $value');
//                 },
//               ),),
//                Padding(
//               padding: const EdgeInsets.only(bottom: 10.0),
//               child:
//               Text("Metode"),
//             ),   
//             Container(
//             padding: const EdgeInsets.only(bottom: 10.0,), 
//             child:DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText:"Pilih Salah Satu",
//                 ),
//                 items: ['Ketemu', 'Chat']
//                 .map((String value) => DropdownMenuItem<String>(
//                  value: value,
//                  child: Text(value),
//                 ))
//                 .toList(),
//                 onChanged: (String? value) {
//                   print('Selected: $value');
//                 },
//               ),),
            
//              Padding(
//               padding: const EdgeInsets.only(bottom: 10.0),
//               child:
//               Text("Area"),
//             ),   
            
//             Container(
//             padding: const EdgeInsets.only(bottom: 10.0,), 
//             child:DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText:"Pilih Salah Satu",
//                 ),
//                 items: ['Bendungan Sutami', 'Lowokwaru','sumbersari', 'merjosari', 'gajayana']
//                 .map((String value) => DropdownMenuItem<String>(
//                  value: value,
//                  child: Text(value),
//                 ))
//                 .toList(),
//                 onChanged: (String? value) {
//                   print('Selected: $value');
//                 },
//               ),),
              
//              Padding(
//               padding: const EdgeInsets.only(bottom: 10.0,),
//               child:
//               Text("Status Awal"),
              
              
//             ),
            
//              Container(
//             padding: const EdgeInsets.only(bottom: 10.0,), 
//             child:DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText:"Pilih Salah Satu",
//                 ),
//                 items: ['Ragu-Ragu','Closing','Q&A','Canceled','Uncover']
//                 .map((String value) => DropdownMenuItem<String>(
//                  value: value,
//                  child: Text(value),
//                 ))
//                 .toList(),
//                 onChanged: (String? value) {
//                   print('Selected: $value');
//                 },
//               ),),
                
              
            
              
//             ElevatedButton(
//                 onPressed: () {
//                 },
//                 child: Text('Submit'),
              
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color.fromRGBO(38, 20, 95, 1),
//                   minimumSize: Size(100, 50),
//                 ),
//               ),
            
       
          
            
           
//         ]
//       )
//     ))));
//   }
  
// }


