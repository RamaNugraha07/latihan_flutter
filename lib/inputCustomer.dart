import 'package:flutter/material.dart';



const List<String> list = <String>['Perempuan', 'Laki-Laki'];
const List<String> statusAwal=<String>['Ragu-Ragu','Closing','Q&A','Canceled','Uncover'];
const List<String> metode=<String>['chat','ketemu'];

class inputCustomer extends StatelessWidget {
  const inputCustomer({super.key});

  Widget build(BuildContext context) {
     Color customColor = Color.fromRGBO(38, 20, 95, 1.0);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(title: const Text('Input Customer')),
        body:SingleChildScrollView(
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
            
          
            
            

            Container(
            padding: const EdgeInsets.only(bottom: 10.0,), 
            child:DropdownButtonFormField<String>(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText:"Pilih Salah Satu",
                ),
                items: ['male', 'female']
                .map((String value) => DropdownMenuItem<String>(
                 value: value,
                 child: Text(value),
                ))
                .toList(),
                onChanged: (String? value) {
                  print('Selected: $value');
                },
              ),),
               Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child:
              Text("Metode"),
            ),   
            Container(
            padding: const EdgeInsets.only(bottom: 10.0,), 
            child:DropdownButtonFormField<String>(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText:"Pilih Salah Satu",
                ),
                items: ['offline', 'online']
                .map((String value) => DropdownMenuItem<String>(
                 value: value,
                 child: Text(value),
                ))
                .toList(),
                onChanged: (String? value) {
                  print('Selected: $value');
                },
              ),),
            
             Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child:
              Text("Area"),
            ),   
            
            Container(
            padding: const EdgeInsets.only(bottom: 10.0,), 
            child:DropdownButtonFormField<String>(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText:"Pilih Salah Satu",
                ),
                items: ['Bendungan Sutami', 'Lowokwaru','sumbersari', 'merjosari', 'gajayana']
                .map((String value) => DropdownMenuItem<String>(
                 value: value,
                 child: Text(value),
                ))
                .toList(),
                onChanged: (String? value) {
                  print('Selected: $value');
                },
              ),),
              
             Padding(
              padding: const EdgeInsets.only(bottom: 10.0,),
              child:
              Text("Status Awal"),
              
              
            ),
            
             Container(
            padding: const EdgeInsets.only(bottom: 10.0,), 
            child:DropdownButtonFormField<String>(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText:"Pilih Salah Satu",
                ),
                items: ['Closing','Q&A','Canceled','Uncover']
                .map((String value) => DropdownMenuItem<String>(
                 value: value,
                 child: Text(value),
                ))
                .toList(),
                onChanged: (String? value) {
                  print('Selected: $value');
                },
              ),),
                
              
            
              
            ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
              
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(38, 20, 95, 1),
                  minimumSize: Size(100, 50),
                ),
              ),
            
       
          
            
           
        ]
      )
    ))));
  }
  
}


