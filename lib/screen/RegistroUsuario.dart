
import 'package:easycontab/components/AppBar.dart';
import 'package:easycontab/components/BackgroundBaseWidget.dart';
import 'package:easycontab/components/Button.dart';
import 'package:easycontab/components/CustomTextField.dart';
import 'package:easycontab/components/logo.dart';
import 'package:easycontab/contants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';


class RegistroUsuario extends StatefulWidget {
  @override
  _RegistroUsuarioState createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {

  File image;
  dynamic bytes;
  final picker = ImagePicker();

  TextEditingController nomeController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();
  TextEditingController confirmarSenhaController = new TextEditingController();

  void submit(){
    if( this.validateSenha() ){
      if( this.validateNome() ){
        if( this.validateEmail()){
          print("OK");
        }
      }
    }
  }

  bool validateSenha(){
    String msg;
    if(this.senhaController.text == this.confirmarSenhaController.text){
      if(this.senhaController.text != null && this.senhaController.text != ' ' && this.senhaController.text != ''){
        return true;
      }else{
        msg = "A senha deve ser informada";
      }
    }else{
      msg = "As senhas devem ser iguais";
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(msg, style: GoogleFonts.openSans( color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500,))
      )
    );
    return false;
  }

  bool validateNome(){
    if( this.nomeController.text != null && this.nomeController.text != '' && this.nomeController.text != ' ' ){
      return true;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text("Digite um nome", style: GoogleFonts.openSans( color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500,))
      )
    );
    return false;
  }

  bool validateEmail(){
    RegExp regex = RegExp(r"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
    if( this.emailController.text != null && this.emailController.text != '' && this.emailController.text != ' ' ){
      return true;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text("Digite um e-mail válido", style: GoogleFonts.openSans( color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500,))
      )
    );
    return false;
  }

  Future chooseImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null){
        this.image = File(pickedFile.path);
      }
    }); 
  }


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return BackgroundBaseWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomAppBar(logged:false),
          SizedBox( height: 50 ),
          Logo(),
          SizedBox( height: 35 ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 60, bottom: 6, left: 6, right: 6),
                width: double.infinity,
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Column(
                  children: [
                    SizedBox( height: 30 ),
                    CustomTextField(labelText: "Nome", textController: this.nomeController, margin: EdgeInsets.only(top: 60, bottom: 10, left: 20, right: 20),),
                    CustomTextField(labelText: "E-MAIL", textController: this.emailController, margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                    CustomTextField(labelText: "SENHA", textController: this.senhaController, margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                    CustomTextField(labelText: "CONFIRMAR SENHA", textController: this.confirmarSenhaController, password: true, margin: EdgeInsets.only(top: 10, bottom: 30, left: 20, right: 20)),
                    Padding(
                      padding: EdgeInsets.only( left: 20, top: 5, right: 20, bottom: 5 ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(onPressed: chooseImage, child: Text("IMAGEM")),
                          Container(
                            height: 80.0,
                            width: 80.0,                        
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: this.image == null ? Image.asset(Assets.avatar) : Image.file(image, height: 80, width: 80, fit: BoxFit.fill, )
                            ),
                          ),                     
                        ],
                      ),
                    ),
                    SizedBox( height: 20 ),
                    CustomButton(label: "CADASTRO", action: submit,),
                    SizedBox( height: 60 ),
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
