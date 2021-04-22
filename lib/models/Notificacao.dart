import 'Abstract.dart';
import 'Usuario.dart';

class Notificacao extends Abstract{
  Usuario usuario;
  int usuarioId;
  String titulo, conteudo, tipo;

  Notificacao( 
    { id, criacao, this.usuario, this.usuarioId, this.titulo, this.conteudo, this.tipo }
  ) : super(id: id, criacao: criacao);

  Notificacao.fromJson(Map<String, dynamic> json){
    this.id = json['id'];
    this.usuarioId = json['usuario_id'];
    this.titulo = json['titulo'];
    this.conteudo = json['conteudo'];
    this.tipo = json['tipo'];
    this.criacao = json['criacao'];
  }

  Map<String, dynamic> tojson() => {
    'id': this.id,
    'usuario_id': this.usuarioId,
    'titulo': this.titulo,
    'conteudo': this.conteudo,
    'tipo': this.tipo,
    'criacao': this.criacao
  };

  @override
  String toString() => this.titulo;

}