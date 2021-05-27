import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataText extends StatelessWidget {

  final String dataLabel, dataValue;

  DataText({ @required this.dataLabel, @required this.dataValue });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 10 ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(this.dataLabel, style: GoogleFonts.openSans( color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w700)),
          SizedBox(height: 5),
          Text(this.dataValue, overflow: TextOverflow.ellipsis, style: GoogleFonts.openSans( color: Colors.grey[900], fontSize: 15, fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}