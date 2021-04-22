import 'Abstract.dart';
import 'Categoria.dart';

class PalavraChave extends Abstract{
  String nome;
  Categoria categoria;

  PalavraChave( 
    int id, { this.nome, this.categoria}
  ) : super(id: id);

  PalavraChave.toJson(Map<String, dynamic> json){
    this.id = json['id'];
    this.nome = json['nome'];
    this.categoria = Categoria(json['categoria']['id'], categoriaPai: json['categoria']['nome']);
  }

  @override 
  String toString() => "${this.nome} - ${this.categoria}";

}