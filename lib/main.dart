import 'package:flutter/material.dart';
import 'package:latihan_navigasi/home.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation")),
      body: Column(
        children: [
          Text("Ini halaman pertama"),
          ElevatedButton(onPressed: (){
           Navigator.of(context)
           .pushReplacement(MaterialPageRoute(builder: (context) => Home())); 
          }, 
          child: Text("Pindah halaman 2")
          ),
        ],
      ),
    );
  }
}