
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'misc/IconCount.dart';

class RespostaComponent extends StatefulWidget {

  final bool resolveu;
  final String conteudo;
  final int nrComentarios;
  final int nrCurtidas;
  final int nrDescurtidas;
  final bool curtiu;

  RespostaComponent({ this.resolveu, this.conteudo, this.nrComentarios, this.nrCurtidas, this.nrDescurtidas, this.curtiu });

  @override
  _RespostaComponentState createState() => _RespostaComponentState();
}

class _RespostaComponentState extends State<RespostaComponent> {

  bool resolveu;
  String conteudo;
  int nrComentarios;
  int nrCurtidas;
  int nrDescurtidas;
  bool curtiu;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only( left: 20, top: 6, right: 20, bottom: 6),
      padding: EdgeInsets.only( left: 10, top: 4, right: 10, bottom: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: Container(                 
              child: Text(
                this.widget.conteudo,
                style: GoogleFonts.openSans( color: Color.fromRGBO(161,161,161,1), fontSize: 9, fontWeight: FontWeight.w600),
                overflow: TextOverflow.clip,                   
              ),
            ),
          ),
          Row(                 
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconCount(count: this.widget.nrComentarios, icon: Icons.question_answer, size: 18, ),
              IconCount(count: this.widget.nrCurtidas, icon: Icons.thumb_up, size: 18, ),
              IconCount(count: this.widget.nrDescurtidas, icon: Icons.thumb_down, size: 18 ),
            ],
          ),
        ]
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(color: Colors.green[800], width: 8, style: BorderStyle.solid )
        ),
        boxShadow: [
          BoxShadow( 
            color: Colors.grey,
            offset: Offset(1,3),
            blurRadius: 3
          )
        ]
      ),
    );
  }
}


