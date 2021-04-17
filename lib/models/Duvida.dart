import 'package:easycontab/models/Abstract.dart';
import 'package:easycontab/models/Categoria.dart';
import 'package:easycontab/models/Usuario.dart';

class Duvida extends Abstract{
  Usuario usuario;
  List<Categoria> categorias;
  String titulo, descricao;
  int nrRespostas, nrViews, nrFavoritos;
  bool aberta, resolvida;

  Duvida(
    int id,
    { this.titulo, this.descricao, this.usuario, this.categorias, this.nrFavoritos, this.nrRespostas, this.nrViews, this.aberta, this.resolvida }
  ) : super(id: id);

  Duvida.fromJson( Map<String, dynamic> json){
    this.id = json['id'];
    this.criacao = DateTime.parse(json['criacao']) ?? null;
    this.ultimaModificacao = DateTime.parse(json['ultima_modificacao']) ?? null;
    this.usuario = Usuario(id: json['id']);
    this.titulo = json['titulo'];
    this.descricao = json['descricao'];
    this.nrRespostas = json['nr_respostas'];
    this.nrViews = json['nr_views'];
    this.nrFavoritos = json['nr_favoritos'];
    this.aberta = json['aberta'];
    this.resolvida = json['resolvida'];
    this.categorias = [];
  }

  Map<String, dynamic> toJson() => {
    'id': this.id,
    'usuario': this.usuario.id,
    'titulo': this.titulo,
    'descricao': this.descricao,
    'nr_respostas': this.nrRespostas,
    'nr_views': this.nrViews ,
    'nr_favoritos': this.nrFavoritos ,
    'aberta': this.aberta ,
    'resolvida': this.resolvida ,
    'categorias': this.gategoriasToJson(),
  };

  List<Map<String, dynamic>> gategoriasToJson(){
    List<Map<String, dynamic>> categorias = [];
    this.categorias.forEach((Categoria categoria) { 
      categorias.add(categoria.toJson());
    });
    return categorias;
  }

  @override 
  String toString() => "${this.titulo}"; 

}