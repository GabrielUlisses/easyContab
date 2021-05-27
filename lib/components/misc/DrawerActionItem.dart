import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerActionItem extends StatelessWidget {

  final IconData icon;
  final String title;
  final dynamic action;

  DrawerActionItem({ @required this.icon, @required this.title, @required this.action });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: ListTile(
        leading: Icon( this.icon, size: 35, color: Colors.grey[400], ),
        title: Text(this.title, style: GoogleFonts.openSans( fontSize: 21, color: Colors.grey[400], fontWeight: FontWeight.w600)),
        onTap: this.action,
        trailing: Icon(Icons.arrow_forward_ios, size: 35, color: Colors.grey[400], ),
      ),
    );
  }
}