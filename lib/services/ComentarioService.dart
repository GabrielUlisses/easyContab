import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:easycontab/models/Comentario.dart';
import 'AbstractService.dart';

class ComentarioService extends AbstractService {

  ComentarioService({ encoding, prefix, @required host, path, queryParams}) 
  : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );



  // POST
  Future<Comentario> registerComentario(Comentario comentario) async {
    http.Response response = await http.post(
      this.buildUri(),
      body: json.encode(comentario.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Comentario.fromJson(this.decode(response));
  }

  // PUT
  Future<Comentario> updateComentario({int id, Comentario comentario}) async {
    http.Response response = await http.put(
      this.buildUri(id.toString()),
      body: json.encode(comentario.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Comentario.fromJson(this.decode(response));
  }

  // GET
  Future<Comentario> getComentario(int id) async{
    http.Response response = await http.get( this.buildUri(id.toString()) );
    
    dynamic json = this.decode(response);
    return Comentario.fromJson(json);

  }

  // GET --> LIST
  Future<List<Comentario>> getComentarios() async{
    List<Comentario> comentarios = [];
    http.Response response = await http.get(this.buildUri());

    dynamic json = this.decode(response);

    for( var obj in json){
      comentarios.add( Comentario.fromJson(obj) );
    }
    return comentarios;
  }

}