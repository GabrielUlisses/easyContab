import 'package:easycontab/models/Abstract.dart';
import 'package:easycontab/models/Usuario.dart';

class Comentario extends Abstract{
  int duvidaId;
  Usuario usuario;
  String comentario;

  Comentario({id, criacao, this.comentario, this.duvidaId, this.usuario}) : super(id: id, criacao: criacao);

  Comentario.fromJson(Map<String, dynamic> json){
    this.id = json['id'];
    this.criacao = json['criacao'];
    this.duvidaId = json['duvida_id'];
    this.comentario = json['comentario'];
    this.usuario = Usuario.fromJson(json['usuario']);
  }

  Map<String, dynamic> toJson() => {
    'id': this.id,
    'criacao': this.criacao ,
    'duvida_id': this.duvidaId,
    'comentario': this.comentario,
    'usuario': this.usuario.toJson()
  };

  @override 
  String toString() => "@${this.usuario.nome} comentário.";

}