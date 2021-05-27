import 'package:easycontab/contants/app_assets.dart';
import 'package:flutter/material.dart';

class FeedAppBar extends StatefulWidget {

  final bool logged;
  final double height;

  FeedAppBar({ this.logged = false, this.height });

  @override
  _FeedAppBarState createState() => _FeedAppBarState();
}
 
class _FeedAppBarState extends State<FeedAppBar> {

  Widget _getChild(){
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 6, width: 38,
                      margin: EdgeInsets.only(right: 10, bottom: 2.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(10) ),
                        color: Colors.white
                      ),
                    ),
                    Container(
                      height: 6, width: 46,
                      margin: EdgeInsets.only(right: 10, bottom: 2.5, top: 2.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(10) ),
                        color: Colors.white
                      ),
                    ),
                    Container(
                      height: 6, width: 34,
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
        height: this.widget.height ?? null,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.office), 
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: this._getChild(),
        )
      );
  }
}

// Container(
//   decoration: BoxDecoration(
//       image: DecorationImage(
//           image: AssetImage(Assets.office), fit: BoxFit.cover)
//       ),
//   child: Scaffold(
//     backgroundColor: Colors.black.withOpacity(0.8),
//     //appBar: loggedAppBar,
//     body: RegistroUsuario()
//   ),
// ),