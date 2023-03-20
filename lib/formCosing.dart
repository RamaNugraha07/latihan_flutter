import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';



const List<String> odp = <String>['100000', '200000','30000000','40000000','500000'];
 DateTime initialDateTime = DateTime.now();

class formClosing extends StatelessWidget {
   const formClosing({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
      title: 'CodeWithHussain.com',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomeScreen(),
      initialRoute: '/',
     
        
      
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? _imageFile;
  File? _ktpImageFile;
  File? _rumahImageFile;
  File? _odpImageFile;
  DateTime? _selectedDate; 
  

  int currentStep = 0;
  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1; //currentStep-=1;
      });
    }
  }
  continueStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep = currentStep + 1; //currentStep+=1;
      });
    }
  }
  

  

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

   Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Row(
        children: [
          OutlinedButton(
            onPressed: details.onStepCancel,
            child: const Text('Back'),
          ),
          ElevatedButton(
            onPressed: details.onStepContinue,
            child: const Text('Next'),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: details.submitStep,
            child: const Text('Submit'),
          ),
          const SizedBox(width: 10),
          
        ],
      ),
    );
  }



 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text('Input Customer')),
      body:
      Stepper(
        
        type:StepperType.horizontal,
        physics: const ScrollPhysics(),
        onStepTapped: onStepTapped,
        onStepContinue: continueStep,
        onStepCancel: cancelStep,
        currentStep: currentStep, 

        
        steps: [
          Step(
              title: const Text('Data Diri'),
              content: Column(
                children:<Widget>  [
                
                  
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text("nama"), 
                  ),
                   // ignore: prefer_const_constructors
                
                  TextField(
                    decoration: InputDecoration(
                    hintText:"Ex: Alifia Putri Budiyanti",
                      border: OutlineInputBorder(),
                    ),

                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("NIK"), 
                  ),

                   TextField(
                    decoration: InputDecoration(
                    hintText:"Ex: 35760111016",
                      border: OutlineInputBorder(),
                    ),

                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("ID Customer"), 
                  ),
                   TextField(
                    decoration: InputDecoration(
                    hintText:"Ex: 357601134416",
                      border: OutlineInputBorder(),
                    ),

                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Nomor Handphone"), 
                  ),

                   TextField(
                    decoration: InputDecoration(
                    hintText:"Ex: 628961686870",
                      border: OutlineInputBorder(),
                    ),

                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Jenis Kelamin"), 
                  ),
                  
                  DropdownButtonFormField(
                      items: [
                        DropdownMenuItem(child: Text('Perempuan'), value: 1),
                        DropdownMenuItem(child: Text('Laki-Laki'), value: 2),
                        
                      ],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        // Do something with the selected value
                      },
                    ),
                    Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Jenis Customer"), 
                  ),
                     DropdownButtonFormField(
                      items: [
                        DropdownMenuItem(child: Text('Personal'), value: 1),
                        DropdownMenuItem(child: Text('Bisnis'), value: 2),
                        
                      ],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        // Do something with the selected value
                      },
                    ),

                    Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Tanggal Request"), 
                  ),
                   
                  
                    TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        readOnly: true, // membuat field tidak dapat diedit
                        onTap: () {
                          DatePicker.showDatePicker(
                            context,
                            currentTime: DateTime.now(),
                            onConfirm: (date) {
                              // melakukan sesuatu dengan tanggal yang dipilih
                            },
                          );
                        },
                      ),
                ],
              ),
              isActive: currentStep >= 0,
              state:
                  currentStep >= 0 ? StepState.complete : StepState.disabled),
          Step(
            title: const Text('Tempat Tinggal'),
            content: Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Alamat"), 
                  ),
                TextField(
                  
                    decoration: InputDecoration(
                    hintText:"jalan kertosentono",
                      border: OutlineInputBorder(),
                    )
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Kecamatan"), 
                  ),
                 DropdownButtonFormField(
                      items: [ 
                        DropdownMenuItem(child: Text('Blimbing'), value: 1),
                        DropdownMenuItem(child: Text('Kedungkandang'), value: 2),
                        DropdownMenuItem(child: Text('Klojen'), value: 3),
                        DropdownMenuItem(child: Text('Lowokwaru'), value: 4),
                        DropdownMenuItem(child: Text('Sukun'), value: 5),
                        
                      ],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        // Do something with the selected value
                      },
                    ),
                    Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Kota / Kabupaten"), 
                  ),
                    DropdownButtonFormField(
                      items: [ 
                        DropdownMenuItem(child: Text('Kota Malang'), value: 1),
                        DropdownMenuItem(child: Text('Kota Batu'), value: 2),
                        DropdownMenuItem(child: Text('Kabupaten Malang'), value: 3),
                      
                      ],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        // Do something with the selected value
                      },
                    ),
                    Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Provinsi"), 
                  ),
                    DropdownButtonFormField(
                      items: [ 
                        DropdownMenuItem(child: Text('Jawa Timur'), value: 1),
                        DropdownMenuItem(child: Text('Jawa Barat'), value: 2),
                        DropdownMenuItem(child: Text('Jawa Tengah'), value: 3),
                         DropdownMenuItem(child: Text('Jakarta'), value: 4),
                        DropdownMenuItem(child: Text('Banten'), value: 5),
                        DropdownMenuItem(child: Text('Yogyakarta'), value: 6),
                      
                      ],
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        // Do something with the selected value
                      },
                    ),

                    Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Alamat Terpasang"), 
                  ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Jalan Kertosentono',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                        child: Text("Keterangan Tempat Tinggal"), 
                      ),
                      TextField(
                        decoration: InputDecoration(
                        hintText:"depan gang sempit",
                          border: OutlineInputBorder(),
                        )
                      ),
                      Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("ODP"), 
                  ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Ex: 1000000",
                          border: OutlineInputBorder(),
                        ),
                        autofillHints: [AutofillHints.countryCode],
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        autofocus: true,
                      ),
                      Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Port"), 
                  ),
                      DropdownButtonFormField(
                      items: [ 
                        DropdownMenuItem(child: Text('1'), value: 1),
                        DropdownMenuItem(child: Text('2'), value: 2),
                        DropdownMenuItem(child: Text('3'), value: 3),
                        DropdownMenuItem(child: Text('4'), value: 4),
                        DropdownMenuItem(child: Text('5'), value: 5),
                        DropdownMenuItem(child: Text('6'), value: 6),
                        DropdownMenuItem(child: Text('7'), value: 5),
                        DropdownMenuItem(child: Text('8'), value: 6),
                      
                      ],
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        // Do something with the selected value
                      },
                    ),
            ]),
            isActive: currentStep >= 0,
            state: currentStep >= 1 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Dokumentasi'),
            content: Column(
            children:  [
             Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Foto KTP"),
                  ),
                  //foto KTP
                  ElevatedButton(
                    onPressed: () async {
                      final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
                      setState(() {
                        _ktpImageFile = File(pickedFile!.path);
                      });
                    },
                    child: Text('Select Image'),
                  ),
                  if (_ktpImageFile != null) Image.file(_ktpImageFile!),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Foto Rumah"),
                  ),
                  //foto rumah
                  ElevatedButton(
                    onPressed: () async {
                      final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
                      setState(() {
                        _rumahImageFile = File(pickedFile!.path);
                      });
                    },
                    child: Text('Select Image'),
                  ),
                  if (_rumahImageFile != null) Image.file(_rumahImageFile!),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text("Foto ODP"),
                  ),
                  //foto ODP
                  ElevatedButton(
                    onPressed: () async {
                      final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
                      setState(() {
                        _odpImageFile = File(pickedFile!.path);
                      });
                    },
                    child: Text('Select Image'),
                  ),
                  if (_odpImageFile != null) Image.file(_odpImageFile!),

            ],),
            
            isActive: currentStep >= 0,
            state: currentStep >= 2 ? StepState.complete : StepState.disabled,
          ),
          
        ],
      ),
    );
  }
}
 

