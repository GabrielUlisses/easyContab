
import 'package:easycontab/components/AppBar.dart';
import 'package:easycontab/components/Button.dart';
import 'package:easycontab/components/CustomTextField.dart';
import 'package:easycontab/components/logo.dart';
import 'package:easycontab/contants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroUsuario extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomAppBar(logged:false),
          SizedBox( height: 50 ),
          Logo(),
          SizedBox( height: 50 ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 60, bottom: 6, left: 6, right: 6),
                width: double.infinity,
                height: 600 ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children: [
                    SizedBox( height: 30 ),
                    CustomTextField(labelText: "Nome", margin: EdgeInsets.only(top: 60, bottom: 10, left: 20, right: 20),),
                    CustomTextField(labelText: "E-MAIL", margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                    CustomTextField(labelText: "SENHA", margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                    CustomTextField(labelText: "CONFIRMAR SENHA", margin: EdgeInsets.only(top: 10, bottom: 30, left: 20, right: 20)),
                    CustomButton(label: "CADASTRO", action: (){},)
                  ],
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  alignment: Alignment.topCenter,
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    image: DecorationImage(
                      image: AssetImage(Assets.userRegister),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 3.0),
                        blurRadius: 2
                      ),
                    ]
                  ),
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}




