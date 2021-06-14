
import 'package:easycontab/components/ComentarioComponent.dart';
import 'package:easycontab/components/CustomDrawer.dart';
import 'package:easycontab/components/DuvidaText.dart';
import 'package:easycontab/components/FeedAppBar.dart';
import 'package:easycontab/components/RespostaComponent.dart';
import 'package:easycontab/components/misc/DrawerActionItem.dart';
import 'package:easycontab/contants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerDuvida extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(241,237,237, 1),
      drawer: CustomDrawer(),
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

