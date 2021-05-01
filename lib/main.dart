

import 'package:easycontab/screen/EditarUsuario.dart';
import 'package:easycontab/screen/FormularioContador.dart';
import 'package:easycontab/screen/RegistroUsuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'contants/app_assets.dart';

void main() {
  runApp(MyApp());
}

final AppBar baseAppBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(''),
      centerTitle: true,
    );

final AppBar loggedAppBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(''),
      centerTitle: true,
      leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {}
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(top: 20, right: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              Assets.userRegister,       
              height: 140,  
              fit: BoxFit.fill  
            )
          ),
        )
      ],
    );


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'easyContab',
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/office.png"), fit: BoxFit.cover)
            ),
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.8),
          //appBar: loggedAppBar,
          body: FormularioContador()
        ),
      ),
    );
  }
}