import 'package:easycontab/components/AppBar.dart';
import 'package:easycontab/components/Button.dart';
import 'package:easycontab/components/CustomTextField.dart';
import 'package:flutter/material.dart';

class FormularioContador extends StatefulWidget {
  @override
  _FormularioContadorState createState() => _FormularioContadorState();
}

class _FormularioContadorState extends State<FormularioContador> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CustomAppBar(logged: true),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(top: 6, bottom: 6, left: 6, right: 6),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Column(
              children: [
                SizedBox( height: 40 ),
                CustomTextField(labelText: "N° DE TELEFONE", margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                CustomTextField(labelText: "N° CRC", margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                CustomTextField(labelText: "ESTADO", margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                CustomTextField(labelText: "CIDADE", margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                CustomTextField(labelText: "BAIRRO", margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                CustomTextField(labelText: "RUA", margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                CustomTextField(labelText: "N°", margin: EdgeInsets.only(top: 10, bottom: 30, left: 20, right: 20)),
                CustomButton(label: "CADASTRO", action: (){}) ,   
                SizedBox( height: 30 ),            
              ],
            ),
          )
        ],
      ),
    );
  }
}