import 'package:easycontab/utils/shapes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'misc/IconCount.dart';

class DuvidaComponent extends StatefulWidget {
  @override
  _DuvidaComponentState createState() => _DuvidaComponentState();
}

class _DuvidaComponentState extends State<DuvidaComponent> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only( left: 20, top: 6, right: 20, bottom: 6),
      child: Container(
        padding: EdgeInsets.only( left: 10, top: 4, right: 10, bottom: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [              
                CustomPaint(size: Size(21,14), painter: DrawTriangle(color: Colors.grey)),
                SizedBox(height: 5,),
                Text("3", style: GoogleFonts.openSans( fontSize: 14, fontWeight: FontWeight.w600 ) ),
                SizedBox(height: 5,),
                CustomPaint(size: Size(21,14), painter: DrawInverseTriangle(color: Colors.grey)),
              ]
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          Container(
                        width: size.width * 0.75,
                        child: Text("PROBLEMAS COM SPED", overflow: TextOverflow.ellipsis, style: GoogleFonts.openSans( color: Color.fromRGBO(78,76,76,1), fontSize: 12, fontWeight: FontWeight.w600),),
                      ),
                      Container(
                        width: size.width * 0.75,
                        child: Text(
                          "Nullam ornare sit amet quam ac lacinia. Donec egestas ligula id felis luctus, in accumsan tellus tincidunt. Cras mi est, sagittis sed libero ut, congue vehicula enim", 
                          style: GoogleFonts.openSans( color: Color.fromRGBO(161,161,161,1), fontSize: 9, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
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
                    IconCount(icon: Icons.check),
                    IconCount(icon: Icons.edit),
                  ],
                ),
              ]
            ),
          ],
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
      ),
    );
  }
}
