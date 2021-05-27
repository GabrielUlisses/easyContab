
import 'package:easycontab/components/DuvidaComponent.dart';
import 'package:easycontab/components/FeedAppBar.dart';
import 'package:easycontab/components/SearchTextField.dart';
import 'package:easycontab/components/misc/DrawerActionItem.dart';
import 'package:easycontab/contants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Duvidas extends StatelessWidget {

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
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [       
                Container(
                  color: Color.fromRGBO(241,237,237, 1), 
                  height: 190, width: size.width,
                ),    
                Positioned(child: FeedAppBar(logged: true, height: 150,), top: 0),  
                SearchField(labelText: "BUSCAR", margin: EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40)),              
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [               
                  DuvidaComponent(),
                  DuvidaComponent(),
                  DuvidaComponent(),
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


// return Scaffold(
//       appBar: PreferredSize(
//         child: FeedAppBar(logged: true,),
//         preferredSize: Size.fromHeight(100),
//       ),
//       backgroundColor: Color.fromRGBO(241,237,237, 1),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             SearchField(labelText: "BUSCAR", margin: EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40)),
//             DuvidaComponent(),
//             DuvidaComponent(),
//             DuvidaComponent(),
//           ]
//         ),
//       ),
//       floatingActionButton: IconButton(
//         icon: Icon(Icons.add),
//         onPressed: (){},
//       ),
//     );


