import 'package:flutter/material.dart';
import 'package:note_in_pdf/drawertest.dart';
import 'package:note_in_pdf/pdftest.dart';
import 'package:note_in_pdf/pg1.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: drawertest(),
    );
  }
}
