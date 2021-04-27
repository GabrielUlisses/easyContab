import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:easycontab/models/Contador.dart';
import 'AbstractService.dart';

class ContadorService extends AbstractService {

  ContadorService({ encoding, prefix, @required host, path, queryParams}) 
  : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );

  // POST
  Future<Contador> registerContador(Contador contador) async {
    http.Response response = await http.post(
      this.buildUri(),
      body: json.encode(contador.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Contador.fromJson(this.decode(response));
  }

  // PUT
  Future<Contador> updateContador({int id, Contador contador}) async {
    http.Response response = await http.put(
      this.buildUri(id.toString()),
      body: json.encode(contador.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Contador.fromJson(this.decode(response));
  }

  // GET
  Future<Contador> getContador(int id) async{
    http.Response response = await http.get( this.buildUri(id.toString()) );
    
    dynamic json = this.decode(response);
    return Contador.fromJson(json);

  }

  // GET --> LIST
  Future<List<Contador>> getContadores() async{
    List<Contador> contadores = [];
    http.Response response = await http.get(this.buildUri());

    dynamic json = this.decode(response);

    for( var obj in json){
      contadores.add( Contador.fromJson(obj) );
    }
    return contadores;
  }

}