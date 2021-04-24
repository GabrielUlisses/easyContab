import 'package:easycontab/models/Comentario.dart';

import 'Abstract.dart';
import 'Duvida.dart';
import 'Usuario.dart';

class Resposta extends Abstract{
  Usuario usuario;
  Duvida duvida;
  List<Comentario> comentarios;
  String conteudo;
  bool resolveu;


  Resposta(
    { id, criacao, ultimaModificacao, this.usuario, this.duvida, this.conteudo, this.resolveu }
  ) : super(id: id, criacao: criacao, ultimaModificacao: ultimaModificacao);

  Resposta.fromJson(Map<String, dynamic> json){
    this.id = json['id'];
    this.criacao = DateTime.parse(json['criacao']);
    this.ultimaModificacao = DateTime.parse(json['ultima_modificacao']);
    this.usuario = Usuario.fromJson(json['usuario']);
    this.duvida = Duvida(id: json['duvida']['id']);
    this.conteudo = json['conteudo'];
    this.resolveu = json['resolveu'];
  } 

  Map<String, dynamic> toJson() => {
    'id': this.id,
    'usuario_id': this.usuario.id, 
    'duvida_id': this.duvida.id, 
    'conteudo': this.conteudo,
    'resolveu': this.resolveu
  };

  @override 
  String toString() => this.conteudo;

}