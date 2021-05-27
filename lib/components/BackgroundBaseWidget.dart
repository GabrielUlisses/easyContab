
import 'package:easycontab/components/misc/DrawerActionItem.dart';
import 'package:easycontab/contants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundBaseWidget extends StatelessWidget {

  final Widget child;

  BackgroundBaseWidget({ @required this.child });

  @override
  Widget build(BuildContext context) {

    ListView getDrawerActions(){
      return ListView(          
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        Assets.userRegister,       
                        height: 80,  
                        fit: BoxFit.fill  
                      )
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("LOGIN", style: GoogleFonts.openSans( fontSize: 19, color: Colors.grey, fontWeight: FontWeight.w700)),
                      Text("GABRIEL ANDRADE", style: GoogleFonts.openSans( fontSize: 21, color: Colors.grey[350], fontWeight: FontWeight.w600)),
                    ],
                  )
                ],
              ),
            ),
            Divider( color: Colors.grey[300], height: 4),
            DrawerActionItem(
              title: "PERFIL",
              action: (){},
              icon: Icons.person,
            ),
            Divider( color: Colors.grey[300], height: 4),
            DrawerActionItem(
              title: "DÚVIDAS",
              action: (){},
              icon: Icons.question_answer,
            ),
            Divider( color: Colors.grey[300], height: 4),
            DrawerActionItem(
              title: "NOTIFICAÇÕES",
              action: (){},
              icon: Icons.notifications,
            ),
            Divider( color: Colors.grey[300], height: 4),
            DrawerActionItem(
              title: "MINHAS DÚVIDAS",
              action: (){},
              icon: Icons.question_answer,
            ),
            Divider( color: Colors.grey[300], height: 4),
          ],
        );
    }

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[900].withOpacity(0.9)
        ),
        child: Container(
          width: size.width * 0.9,
          child: Drawer(
            child: getDrawerActions(),
          ),
        )
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.office), fit: BoxFit.cover
          )
        ),
        child: Container(
          color: Colors.grey[900].withOpacity(0.6),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: this.child
          )
        ),
      ),
    );
  }
}