import 'package:easycontab/models/Abstract.dart';

import 'Duvida.dart';
import 'Resposta.dart';
import 'Usuario.dart';

class ReacaoResposta extends Abstract{
  Usuario usuario;
  Resposta resposta;
  bool curtiu;  

  ReacaoResposta({ id, this.usuario, this.resposta, this.curtiu }) : super(id: id);

  ReacaoResposta.fromJson(Map<String, dynamic> json) {
    this.usuario = Usuario.fromJson(json['usuario']);
    this.resposta = Resposta(id: json['resposta']['id']);
    this.curtiu = json['curtiu'];
  }

  Map<String, dynamic> toJson() => {
    'id': this.id,
    'resposta': { 'id': this.resposta.id },
    'usuario': { 'id': this.usuario.id }
  };

}

class ReacaoDuvida extends Abstract{
  Usuario usuario;
  Duvida duvida;
  bool curtiu;  

  ReacaoDuvida({ id, this.usuario, this.duvida, this.curtiu }) : super(id: id);

  ReacaoDuvida.fromJson(Map<String, dynamic> json) {
    this.usuario = Usuario.fromJson(json['usuario']);
    this.duvida = Duvida(id: json['duvida']['id']);
    this.curtiu = json['curtiu'];
  }

  Map<String, dynamic> toJson() => {
    'id': this.id,
    'duvida': { 'id': this.duvida.id },
    'usuario': { 'id': this.usuario.id }
  };

}