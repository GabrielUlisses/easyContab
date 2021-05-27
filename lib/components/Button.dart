import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {

  final String label;
  final dynamic action;
  final Color color;

  CustomButton({ this.label, this.action, this.color = const Color.fromRGBO(64,140,229, 1)  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(this.widget.label, style: GoogleFonts.openSans( fontWeight: FontWeight.w600, fontSize: 20  ),),
      onPressed: this.widget.action, 
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(this.widget.color),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric( horizontal: 20, vertical: 7 )),

      ),
    );
  }
}

class CustomSmallButton extends StatefulWidget {

  final String label;
  final dynamic action;
  final Color color;

  CustomSmallButton({ this.label, this.action, this.color = const Color.fromRGBO(64,140,229, 1)  });

  @override
  _CustomSmallButtonState createState() => _CustomSmallButtonState();
}

class _CustomSmallButtonState extends State<CustomSmallButton> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(this.widget.label, style: GoogleFonts.openSans( fontWeight: FontWeight.w700, fontSize: 16  ),),
      onPressed: this.widget.action, 
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(this.widget.color),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric( horizontal: 16, vertical: 5 )),

      ),
    );
  }
}