
import 'package:easycontab/components/AppBar.dart';
import 'package:easycontab/components/BackgroundBaseWidget.dart';
import 'package:easycontab/components/Button.dart';
import 'package:easycontab/components/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditarUsuario extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return BackgroundBaseWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomAppBar(logged: true,),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 30),
            child: Text("GABRIEL ANDRADE", style: GoogleFonts.openSans( fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700, height: 4),)
          ),
          Container(
                margin: EdgeInsets.only(bottom: 6, left: 6, right: 6),
                width: double.infinity,                     
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child: Column(
                  children: [
                    SizedBox( height: 30 ),
                    CustomTextField(labelText: "Nome", margin: EdgeInsets.only(top: 60, bottom: 10, left: 20, right: 20),),
                    CustomTextField(labelText: "E-MAIL", margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                    CustomTextField(labelText: "SENHA", margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                    CustomTextField(labelText: "CONFIRMAR SENHA", margin: EdgeInsets.only(top: 10, bottom: 30, left: 20, right: 20)),
                    CustomButton(label: "EDITAR", action: (){}, ),
                    SizedBox( height: 80 ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}
