
import 'package:easycontab/components/AppBar.dart';
import 'package:easycontab/components/Button.dart';
import 'package:easycontab/components/DataLine.dart';
import 'package:easycontab/components/DataText.dart';
import 'package:easycontab/contants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilContador extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.office), fit: BoxFit.cover
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.grey[900].withOpacity(0.6),
          body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomAppBar(logged: true,),
          SizedBox( height: 35 ),
          Container(
            width: size.width,
            padding: EdgeInsets.only(left: 30),
            child: Text("GABRIEL ANDRADE", style: GoogleFonts.openSans( fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600),)
          ),
          SizedBox( height: 10 ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 6, left: 6, right: 6),
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
                DataLine(dataLabel: "N° CONTATO", dataValue: "(45) 00000-0000", dataIcon: Icons.phone),
                DataLine(dataLabel: "CRC", dataValue: "00-000000/00", dataIcon: Icons.person),
                SizedBox( height: 20 ),
                Padding(child: Divider( color: Colors.black ), padding: EdgeInsets.symmetric(horizontal: 10)),
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
                Padding(child: Divider( color: Colors.black ), padding: EdgeInsets.symmetric(horizontal: 10)),
                SizedBox( height: 20 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    Padding(padding: EdgeInsets.symmetric( horizontal: 10 ), child: CustomButton( label: "CONSULTAR", action: (){}, ) , ),
                    Padding(padding: EdgeInsets.symmetric( horizontal: 10 ), child: CustomButton( label: "EDITAR", action: (){}, ) , )
                  ],
                ),
                SizedBox( height: 60),
              ],
            ),
          ),
        ],
      )
    )
        ),
      ),
    );
    
  }
}





