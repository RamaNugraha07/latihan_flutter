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
            TextField(
              decoration: InputDecoration(
               hintText:"Laki-laki / perempuan",
                border: OutlineInputBorder(),
                
                
              ),
            ),
          
            
            

            
               Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
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
              padding: const EdgeInsets.only(bottom: 10.0),
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
              padding: const EdgeInsets.only(bottom: 10.0,),
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


