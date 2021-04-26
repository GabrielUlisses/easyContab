import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:easycontab/models/Duvida.dart';
import 'AbstractService.dart';

class DuvidaService extends AbstractService {

  DuvidaService({ encoding, prefix, @required host, path, queryParams}) 
  : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );


  // POST
  Future<Duvida> registerDuvida(Duvida duvida) async {
    http.Response response = await http.post(
      this.buildUri(),
      body: json.encode(duvida.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Duvida.fromJson(this.decode(response));
  }

  // PUT
  Future<Duvida> updateDuvida({int id, Duvida duvida}) async {
    http.Response response = await http.put(
      this.buildUri(id.toString()),
      body: json.encode(duvida.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Duvida.fromJson(this.decode(response));
  }

  // GET
  Future<Duvida> getDuvida(int id, { bool loadDependencies = false }) async{
    http.Response response = await http.get( this.buildUri(id.toString()) );
    
    dynamic json = this.decode(response);
    return Duvida.fromJson(json, loadDependencies: loadDependencies);

  }

  // GET --> LIST
  Future<List<Duvida>> getDuvidas({ bool loadDependencies = false }) async{
    List<Duvida> categorias = [];
    http.Response response = await http.get(this.buildUri());

    dynamic json = this.decode(response);

    for( var obj in json){
      categorias.add( Duvida.fromJson(obj, loadDependencies: loadDependencies) );
    }
    return categorias;
  }

}