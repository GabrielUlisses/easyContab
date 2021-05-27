
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'misc/IconCount.dart';

class DuvidaText extends StatefulWidget {
  @override
  _DuvidaTextState createState() => _DuvidaTextState();
}

class _DuvidaTextState extends State<DuvidaText> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only( left: 20, top: 6, right: 20, bottom: 6),
      padding: EdgeInsets.only( left: 10, top: 4, right: 10, bottom: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(            
                  child: Text(
                    "PROBLEMAS COM SPED", 
                    overflow: TextOverflow.clip, 
                    style: GoogleFonts.openSans( color: Color.fromRGBO(78,76,76,1), fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),                     
                Container(                 
                  child: Text(
                    "Nullam ornare sit amet quam ac lacinia. Donec egestas ligula id felis luctus, in accumsan tellus tincidunt. Cras mi est, sagittis sed libero ut, congue vehicula enim"+
                    "Nullam ornare sit amet quam ac lacinia. Donec egestas ligula id felis luctus, in accumsan tellus tincidunt. Cras mi est, sagittis sed libero ut, congue vehicula enim"+
                    "Nullam ornare sit amet quam ac lacinia. Donec egestas ligula id felis luctus, in accumsan tellus tincidunt. Cras mi est, sagittis sed libero ut, congue vehicula enim", 
                    style: GoogleFonts.openSans( color: Color.fromRGBO(161,161,161,1), fontSize: 9, fontWeight: FontWeight.w600),
                    overflow: TextOverflow.clip,                   
                  ),
                ),
              ],
            ),
          ),
          Row(                 
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconCount(count: 0, icon: Icons.messenger_sharp, size: 18, ),
              IconCount(count: 0, icon: Icons.remove_red_eye),
            ],
          ),
        ]
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(1),
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


