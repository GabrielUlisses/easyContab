
import 'package:easycontab/components/AppBar.dart';
import 'package:easycontab/components/BackgroundBaseWidget.dart';
import 'package:easycontab/components/Button.dart';
import 'package:easycontab/components/CustomTextField.dart';
import 'package:easycontab/components/logo.dart';
import 'package:easycontab/contants/app_api_urls.dart';
import 'package:easycontab/contants/app_assets.dart';
import 'package:easycontab/screen/Duvidas.dart';
import 'package:easycontab/screen/RegistroUsuario.dart';
import 'package:easycontab/services/AuthService.dart';
import 'package:easycontab/utils/Preferences.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PaginaLogin extends StatefulWidget {
  @override
  _PaginaLoginState createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {

  AuthService service = new AuthService( prefix: ApiUrls.prefix, host: ApiUrls.host, path: "grd/auth");

  TextEditingController nomeController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();

  Preferences preferences = new Preferences();
  


  void showError(String msg){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(msg, style: GoogleFonts.openSans( color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500,))
      )
    );
  }

  void submit() async {
    if( this.validateSenha() ){
      if( this.validateNome() ){
        Map<String, dynamic> data = await this.service.login( this.nomeController.text, this.senhaController.text );
        if( data["status"] == 201 ) {
          String token = data["data"]["accessToken"]["token"];
          this.preferences.setToken(token);
          Navigator.push( context, MaterialPageRoute(builder: (context) => Duvidas()) );
        }
        else{
          this.showError("Usuário Não encontrado");
        }
      }
    }
  }

  bool validateSenha(){
    if(this.senhaController.text != null && this.senhaController.text != ' ' && this.senhaController.text != ''){
      return true;
    }
    this.showError("A senha deve ser informada");
    return false;
  }

  bool validateNome(){
    if( this.nomeController.text != null && this.nomeController.text != '' && this.nomeController.text != ' ' ){
      return true;
    }
    this.showError("Por favor, informe o e-mail");
    return false;
  }

  @override
  Widget build(BuildContext context) {

    this.preferences.init();

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
                    CustomTextField(labelText: "SENHA", textController: this.senhaController, password: true, margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),                    
                    SizedBox( height: 20 ),
                    CustomButton(label: "LOGIN", action: submit,),
                    SizedBox( height: 30 ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: GoogleFonts.openSans( fontWeight: FontWeight.w600, fontSize: 14)
                      ),
                      onPressed: () {
                        Navigator.push( context, MaterialPageRoute(builder: (context) => RegistroUsuario()) );
                      },
                      child: const Text('Realizar Cadastro'),
                    ),
                    SizedBox( height: 40 ),
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
