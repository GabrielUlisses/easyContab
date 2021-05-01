import 'package:easycontab/contants/app_assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {

  final bool logged;

  CustomAppBar({ this.logged = false });

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {

  Widget _getChild(){
      if(this.widget.logged == true){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(icon: Icon(Icons.menu), color: Colors.white, onPressed: (){}),
            Container(
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  Assets.userRegister,       
                  height: 70,  
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

    return Container(
      width: size.width,
      child: this._getChild(),
    );
  }
}