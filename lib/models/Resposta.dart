import 'package:easycontab/models/Comentario.dart';
import 'package:easycontab/models/Reacao.dart';

import 'Abstract.dart';
import 'Duvida.dart';
import 'Usuario.dart';

class Resposta extends Abstract{
  Usuario usuario;
  Duvida duvida;
  List<Comentario> comentarios;
  List<ReacaoResposta> reacoes;
  String conteudo;
  bool resolveu;
  int nrAprovacoes, nrDesaprovacoes;


  Resposta(
    { id, criacao, ultimaModificacao, this.usuario, this.duvida, this.conteudo, this.nrAprovacoes, this.nrDesaprovacoes, this.resolveu }
  ) : super(id: id, criacao: criacao, ultimaModificacao: ultimaModificacao);

  Resposta.fromJson(Map<String, dynamic> json, { bool loadDependencies = false }){
    this.id = json['id'];
    this.criacao = DateTime.parse(json['criacao']);
    this.ultimaModificacao = DateTime.parse(json['ultima_modificacao']);
    this.usuario = Usuario.fromJson(json['usuario']);
    this.duvida = Duvida(id: json['duvida']['id']);
    this.conteudo = json['conteudo'];
    this.resolveu = json['resolveu'];
    if( loadDependencies == true  ){
      this.comentarios = comentariosFromJson(json['comentarios']);
      this.reacoes = reacoesFromJson(json['reacoes']);
    }
  } 

  List<Comentario> comentariosFromJson(dynamic json){
      List<Comentario> comentarios = [];

      for( var comentario in json){
        comentarios.add( Comentario.fromJson(comentario) );
      }
      return comentarios;
    }

    List<ReacaoResposta> reacoesFromJson(dynamic json){
      List<ReacaoResposta> reacoes = [];

      for( var reacao in json){
        reacoes.add( ReacaoResposta.fromJson(reacao) );
      }
      return reacoes;
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