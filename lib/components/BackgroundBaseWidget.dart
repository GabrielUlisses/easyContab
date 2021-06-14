
import 'package:easycontab/components/CustomDrawer.dart';
import 'package:easycontab/contants/app_assets.dart';
import 'package:flutter/material.dart';


class BackgroundBaseWidget extends StatelessWidget {

  final Widget child;

  BackgroundBaseWidget({ @required this.child });

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: CustomDrawer(),
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