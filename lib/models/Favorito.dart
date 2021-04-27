import 'Abstract.dart';
import 'Duvida.dart';
import 'Usuario.dart';

class Favorito extends Abstract{
  Duvida duvida;
  Usuario usuario;

  Favorito({ this.usuario, this.duvida });

  Favorito.fromLightJson(Map<String, dynamic> json){
    this.id = json['id'];
    this.criacao = json['criacao'];
    this.usuario = json['usuario']['id'];
    this.duvida = json['duvida']['id'];
  }

  Favorito.fromJson(Map<String, dynamic> json){
    this.id = json['id'];
    this.criacao = json['criacao'];
    this.usuario = Usuario.fromJson(json['usuario']);
    this.duvida = Duvida.fromJson(json['duvida']);
  }

  Map<String, dynamic> toJson() => {
    'id': this.id ,
    'usuario': this.usuario.id ,
    'duvida': this.duvida.id
  };

}