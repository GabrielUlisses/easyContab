import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:easycontab/models/Usuario.dart';
import 'AbstractService.dart';

class UsuarioService extends AbstractService {

  UsuarioService({ encoding, prefix, @required host, path, queryParams}) 
  : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );
  //({ encoding, prefix, host, path, queryParams}) : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );


  // POST
  Future<Usuario> registerUsuario(Usuario usuario) async {
    http.Response response = await http.post(
      this.buildUri(),
      body: json.encode(usuario.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Usuario.fromJson(this.decode(response));
  }

  // PUT
  Future<Usuario> updateUsuario({int id, Usuario usuario}) async {
    http.Response response = await http.put(
      this.buildUri(id.toString()),
      body: json.encode(usuario.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Usuario.fromJson(this.decode(response));
  }

  // GET
  Future<Usuario> getUsuario(int id) async{
    http.Response response = await http.get( this.buildUri(id.toString()) );
    
    dynamic json = this.decode(response);
    return Usuario.fromJson(json);

  }

  // GET --> LIST
  Future<List<Usuario>> getUsuarios() async{
    List<Usuario> categorias = [];
    http.Response response = await http.get(this.buildUri());

    dynamic json = this.decode(response);

    for( var obj in json){
      categorias.add( Usuario.fromJson(obj) );
    }
    return categorias;
  }

}