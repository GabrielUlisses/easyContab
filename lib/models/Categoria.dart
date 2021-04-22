import 'Abstract.dart';

class Categoria extends Abstract{
  String nome, descricacao;
  Categoria categoriaPai;

  Categoria(
    int id, { this.nome, this.descricacao, this.categoriaPai }
  ) : super(id: id);

  Categoria.fromJson( Map<String, dynamic> json ) {
    this.id = json['id'];
    this.nome = json['nome'];
    this.descricacao = json['descricao'];
    this.categoriaPai = Categoria(json['id']);
  }

  Map<String, dynamic> toJson() => {
    'id': this.id,
    'nome': this.nome,
    'descricao': this.descricacao,
    'categoria_pai': this.categoriaPai.id,
  };

  @override
  String toString() => this.nome;

}