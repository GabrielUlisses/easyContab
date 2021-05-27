
import 'package:easycontab/screen/RegistroUsuario.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'easyContab',
      debugShowCheckedModeBanner: false,
      home: RegistroUsuario()
    );
  }
}

