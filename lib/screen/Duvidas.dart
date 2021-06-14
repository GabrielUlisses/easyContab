
import 'package:easycontab/components/CustomDrawer.dart';
import 'package:easycontab/components/DuvidaComponent.dart';
import 'package:easycontab/components/FeedAppBar.dart';
import 'package:easycontab/components/SearchTextField.dart';
import 'package:easycontab/models/Duvida.dart';
import 'package:easycontab/screen/CriarDuvida.dart';
import 'package:easycontab/screen/Duvida.dart';
import 'package:flutter/material.dart';

class Duvidas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(241,237,237, 1),
      drawer: CustomDrawer(),
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
                  GestureDetector(
                    child: DuvidaComponent(),
                    onTap: (){
                      Navigator.push( context, MaterialPageRoute(builder: (context) => VerDuvida()) );
                    },
                  ),
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
        onPressed: (){
          Navigator.push( context, MaterialPageRoute(builder: (context) => CriarDuvida()) );
        },
      )
    );
  }
}
