import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:easycontab/models/Resposta.dart';
import 'AbstractService.dart';

class RespostaService extends AbstractService {

  RespostaService({ encoding, prefix, @required host, path, queryParams}) 
  : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );
  //({ encoding, prefix, host, path, queryParams}) : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );


  // POST
  Future<Resposta> registerResposta(Resposta resposta) async {
    http.Response response = await http.post(
      this.buildUri(),
      body: json.encode(resposta.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Resposta.fromJson(this.decode(response));
  }

  // PUT
  Future<Resposta> updateResposta({int id, Resposta resposta}) async {
    http.Response response = await http.put(
      this.buildUri(id.toString()),
      body: json.encode(resposta.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Resposta.fromJson(this.decode(response));
  }

  // GET
  Future<Resposta> getResposta(int id, { bool loadDependencies = false }) async{
    http.Response response = await http.get( this.buildUri(id.toString()) );
    
    dynamic json = this.decode(response);
    return Resposta.fromJson(json, loadDependencies: loadDependencies);

  }

  // GET --> LIST
  Future<List<Resposta>> getRespostas({bool loadDependencies = false}) async{
    List<Resposta> categorias = [];
    http.Response response = await http.get(this.buildUri());

    dynamic json = this.decode(response);

    for( var obj in json){
      categorias.add( Resposta.fromJson(obj, loadDependencies: loadDependencies) );
    }
    return categorias;
  }

}