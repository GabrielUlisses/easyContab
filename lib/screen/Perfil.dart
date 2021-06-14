
import 'package:easycontab/components/AppBar.dart';
import 'package:easycontab/components/BackgroundBaseWidget.dart';
import 'package:easycontab/components/Button.dart';
import 'package:easycontab/components/DataLine.dart';
import 'package:easycontab/components/DataText.dart';
import 'package:easycontab/utils/Preferences.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'EditarUsuario.dart';

class Perfil extends StatelessWidget {

  Preferences preferences = new Preferences();

  @override
  Widget build(BuildContext context) {

    preferences.init();
    
    // Map<String, dynamic> user = this.preferences.getUser();

    return BackgroundBaseWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomAppBar(logged: true,),         
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 30),
            child: Text("GABRIEL ANDRADE", style: GoogleFonts.openSans( fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600, height: 4),)
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 6, left: 6, right: 6),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25))
            ),
            child: Column(
              children: [
                SizedBox( height: 20 ),
                DataLine(dataLabel: "NOME COMPLETO", dataValue: "GABRIEL ULISSES ANDRADE", dataIcon: Icons.person),
                DataLine(dataLabel: "E-MAIL", dataValue: "gabrielandrade@email.com", dataIcon: Icons.mail),
                SizedBox( height: 20 ),
                Padding(child: Divider( color: Colors.black), padding: EdgeInsets.symmetric(horizontal: 10)),
                SizedBox( height: 10 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DataText(dataLabel: "N° PERGUNTAS", dataValue: "3"),
                    DataText(dataLabel: "N° RESPOSTAS ", dataValue: "8"),
                    DataText(dataLabel: "PONTUAÇÃO", dataValue: "80 XP"),
                  ],
                ),
                SizedBox( height: 10 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DataText(dataLabel: "N° RESOLUÇÕES", dataValue: "3"),
                  ],
                ),
                Padding(child: Divider( color: Colors.black), padding: EdgeInsets.symmetric(horizontal: 10)),
                SizedBox(
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                      Padding(
                        padding: EdgeInsets.symmetric( horizontal: 10 ), 
                        child: CustomButton( 
                          label: "EDITAR", 
                          action: (){
                            Navigator.push( context, MaterialPageRoute(builder: (context) => EditarUsuario()) );
                          }, 
                        ), 
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}





