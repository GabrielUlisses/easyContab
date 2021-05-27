import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("easy", style: GoogleFonts.openSans(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600, height: 0.3)),
          Text("Contab", style: GoogleFonts.openSans(color: Color.fromRGBO(66,78,186, 1), fontSize: 28, fontWeight: FontWeight.w700, height: 1))
        ],
      ),
    );
  }
}