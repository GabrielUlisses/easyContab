import 'package:easycontab/contants/app_assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {

  final bool logged;

  CustomAppBar({ this.logged = false });

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {

  Widget _getChild(BuildContext context){
      if(this.widget.logged == true){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //IconButton(icon: Icon(Icons.menu), color: Colors.white, onPressed: (){}),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.only(left:15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 7, width: 38,
                      margin: EdgeInsets.only(right: 10, bottom: 2.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(10) ),
                        color: Colors.white
                      ),
                    ),
                    Container(
                      height: 7, width: 46,
                      margin: EdgeInsets.only(right: 10, bottom: 2.5, top: 2.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(10) ),
                        color: Colors.white
                      ),
                    ),
                    Container(
                      height: 7, width: 34,
                      margin: EdgeInsets.only(right: 10, top: 2.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(10) ),
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
            ),
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
            )
          ],
        );
      }else{
        return SizedBox(height: 30, );
      }
    }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        width: size.width,
        child: this._getChild(context)
      )
    );
  }
}