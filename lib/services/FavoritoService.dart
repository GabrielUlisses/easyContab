import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:easycontab/models/Favorito.dart';
import 'AbstractService.dart';

class FavoritoService extends AbstractService {

  FavoritoService({ encoding, prefix, @required host, path, queryParams}) 
  : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );
  //({ encoding, prefix, host, path, queryParams}) : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );


  // POST
  Future<Favorito> registerFavorito(Favorito favorito) async {
    http.Response response = await http.post(
      this.buildUri(),
      body: json.encode(favorito.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Favorito.fromJson(this.decode(response));
  }

  // PUT
  Future<Favorito> updateFavorito({int id, Favorito favorito}) async {
    http.Response response = await http.put(
      this.buildUri(id.toString()),
      body: json.encode(favorito.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Favorito.fromJson(this.decode(response));
  }

  // GET
  Future<Favorito> getFavorito(int id) async{
    http.Response response = await http.get( this.buildUri(id.toString()) );
    
    dynamic json = this.decode(response);
    return Favorito.fromJson(json);

  }

  // GET --> LIST
  Future<List<Favorito>> getFavoritos() async{
    List<Favorito> favoritos = [];
    http.Response response = await http.get(this.buildUri());

    dynamic json = this.decode(response);

    for( var obj in json){
      favoritos.add( Favorito.fromJson(obj) );
    }
    return favoritos;
  }

}