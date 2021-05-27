import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatefulWidget {

  final String hintText, labelText;
  final double padding;
  final TextEditingController textController;
  final EdgeInsets margin;

  SearchField({ this.hintText, this.padding = 20, this.textController, this.labelText, this.margin });

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.widget.margin,
      padding: EdgeInsets.symmetric( horizontal: 20, vertical: 0 ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
        boxShadow: [BoxShadow( color: Colors.grey[600], blurRadius: 2, offset: Offset(1,2) )]
      ),
      child: TextField(
        controller: this.widget.textController ?? null,
        decoration: InputDecoration(
          labelText: this.widget.labelText,
          labelStyle: GoogleFonts.openSans( color: Colors.grey[600], fontWeight: FontWeight.w700),
          hintText: this.widget.hintText,
          hintStyle: GoogleFonts.openSans( color: Colors.grey[600], fontWeight: FontWeight.w700) ,          
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          suffixIcon: Icon(Icons.search)
        ),
      ),
    );
  }
}