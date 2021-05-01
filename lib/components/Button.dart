import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {

  final String label;
  final dynamic action;

  CustomButton({ this.label, this.action });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  @override
  Widget build(BuildContext context) {

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return ElevatedButton(
      child: Text(this.widget.label, style: GoogleFonts.openSans( fontWeight: FontWeight.w600, fontSize: 20  ),),
      onPressed: this.widget.action, 
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(64,140,229, 1)),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric( horizontal: 30, vertical: 10 )),

      ),
    );
  }
}