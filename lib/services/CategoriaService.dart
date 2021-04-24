import 'package:easycontab/models/Categoria.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'AbstractService.dart';

class CategoriaService extends AbstractService {

  CategoriaService({ encoding, prefix, @required host, path, queryParams}) 
  : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );
  //({ encoding, prefix, host, path, queryParams}) : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );

  Future<Categoria> getCategoria(int id) async{
    http.Response response = await http.get( this.buildUri(id.toString()) );
    
    dynamic json = this.decode(response);
    return Categoria.fromJson(json);

  }

  Future<List<Categoria>> getCategorias() async{
    List<Categoria> categorias = [];
    http.Response response = await http.get(this.buildUri());

    dynamic json = this.decode(response);

    for( var obj in json){
      categorias.add( Categoria.fromJson(obj) );
    }
    return categorias;
  }

}