import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {

  final String hintText, labelText;
  final double padding;
  final TextEditingController textController;
  final EdgeInsets margin;
  final bool password;

  CustomTextField({ this.hintText, this.padding = 20, this.textController, this.labelText, this.margin, this.password = false });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.widget.margin,
      padding: EdgeInsets.symmetric( horizontal: 20 ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(4)
      ),
      child: TextField(
        controller: this.widget.textController ?? null,
        obscureText: this.widget.password,
        decoration: InputDecoration(
          labelText: this.widget.labelText,
          labelStyle: GoogleFonts.openSans( color: Colors.grey[800], fontWeight: FontWeight.w700),
          hintText: this.widget.hintText,
          hintStyle: GoogleFonts.openSans( color: Colors.grey[600], fontWeight: FontWeight.w700) ,          
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none
        ),
      ),
    );
  }
}

class CustomTextArea extends StatefulWidget {

  final String hintText, labelText;
  final double padding;
  final TextEditingController textController;
  final EdgeInsets margin;

  CustomTextArea({ this.hintText, this.padding = 20, this.textController, this.labelText, this.margin });

  @override
  _CustomTextAreaState createState() => _CustomTextAreaState();
}

class _CustomTextAreaState extends State<CustomTextArea> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.widget.margin,
      padding: EdgeInsets.symmetric( horizontal: 20 ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(4)
      ),
      child: TextField(
        controller: this.widget.textController ?? null,
        maxLines: null,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          labelText: this.widget.labelText,
          labelStyle: GoogleFonts.openSans( color: Colors.grey[800], fontWeight: FontWeight.w700),
          hintText: this.widget.hintText,
          hintStyle: GoogleFonts.openSans( color: Colors.grey[600], fontWeight: FontWeight.w700) ,          
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none
        ),
      ),
    );
  }
}