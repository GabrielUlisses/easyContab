import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconCount extends StatefulWidget {

  final int count;
  final IconData icon;
  final double size;
  final bool active;

  IconCount({ this.count, @required this.icon, this.size = 20, this.active = false });

  @override
  _IconCountState createState() => _IconCountState();
}

class _IconCountState extends State<IconCount> {

  int count;
  bool active;
  MaterialColor color;

  @override
  Widget build(BuildContext context) {
 
    this.color = this.widget.active == false ? Colors.grey : Colors.blue;

    this.count = this.widget.count;

    return Padding(
      padding: EdgeInsets.only(left: 2, right: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          this.count != null ? Text( this.count.toString(), style: GoogleFonts.openSans( color: this.color, fontSize: 12  )) : Text(""),
          Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Icon( this.widget.icon, color: this.color, size: this.widget.size,),
          )
        ],
      ),
    );
  }
}