
import 'package:easycontab/components/ComentarioComponent.dart';
import 'package:easycontab/components/DuvidaComponent.dart';
import 'package:easycontab/components/DuvidaText.dart';
import 'package:easycontab/components/FeedAppBar.dart';
import 'package:easycontab/components/RespostaComponent.dart';
import 'package:easycontab/components/SearchTextField.dart';
import 'package:easycontab/components/misc/DrawerActionItem.dart';
import 'package:easycontab/contants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerDuvida extends StatelessWidget {

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
      backgroundColor: Color.fromRGBO(241,237,237, 1),
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
        child: Column(
          children: [
            FeedAppBar(logged: true, height: 150,), 
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [               
                  DuvidaText(),
                  RespostaComponent(
                    conteudo: "Nullam ornare sit amet quam ac lacinia. Donec egestas ligula id felis luctus, in accumsan tellus tincidunt. Cras mi est, sagittis sed libero ut, congue vehicula enim",
                    nrComentarios: 2,
                    nrCurtidas: 2,
                    nrDescurtidas: 0,
                    resolveu: false,
                  ),
                  RespostaComponent(
                    conteudo: "Nullam ornare sit amet quam ac lacinia. Donec egestas ligula id felis luctus, in accumsan tellus tincidunt. Cras mi est, sagittis sed libero ut, congue vehicula enim",
                    nrComentarios: 2,
                    nrCurtidas: 2,
                    nrDescurtidas: 0,
                    resolveu: false,
                  ),
                  ComentarioComponent(conteudo: "Nullam ornare sit amet quam ac lacinia. Donec egestas ligula id felis luctus",)
                ]
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: (){},
      )
    );
  }
}

