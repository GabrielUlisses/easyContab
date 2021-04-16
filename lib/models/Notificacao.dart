import 'package:easycontab/models/Abstract.dart';
import 'package:easycontab/models/Usuario.dart';

class Notificacao extends Abstract{
  Usuario usuario;
  String titulo, conteudo, tipo;

  Notificacao( 
    int id, DateTime criacao, 
    { this.usuario, this.titulo, this.conteudo, this.tipo }
  ) : super(id: id, criacao: criacao);

}