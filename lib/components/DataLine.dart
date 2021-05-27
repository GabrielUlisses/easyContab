import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataLine extends StatelessWidget {

  final String dataLabel, dataValue;
  final IconData dataIcon;

  DataLine({ @required this.dataLabel, @required this.dataValue, @required this.dataIcon });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 15 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(this.dataLabel, style: GoogleFonts.openSans( color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w700)),
              SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width * 0.63,
                child: Text(this.dataValue, overflow: TextOverflow.ellipsis, style: GoogleFonts.openSans( color: Colors.grey[800], fontSize: 16, fontWeight: FontWeight.w600))
              ),
            ],
          ),
          Icon(
            this.dataIcon,
            color: Colors.grey,
            size: 60,
          )
        ],
      ),
    );
  }
}