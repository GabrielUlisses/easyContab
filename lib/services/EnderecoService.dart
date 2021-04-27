import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:easycontab/models/Endereco.dart';
import 'AbstractService.dart';

class EnderecoService extends AbstractService {

  EnderecoService({ encoding, prefix, @required host, path, queryParams}) 
  : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );

  // POST
  Future<Endereco> registerEndereco(Endereco endereco) async {
    http.Response response = await http.post(
      this.buildUri(),
      body: json.encode(endereco.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Endereco.fromJson(this.decode(response));
  }

  // PUT
  Future<Endereco> updateEndereco({int id, Endereco endereco}) async {
    http.Response response = await http.put(
      this.buildUri(id.toString()),
      body: json.encode(endereco.toJson()),
      headers: this.getHeader(),
      encoding: this.encoding
    );

    return Endereco.fromJson(this.decode(response));
  }

  // GET
  Future<Endereco> getEndereco(int id) async{
    http.Response response = await http.get( this.buildUri(id.toString()) );
    
    dynamic json = this.decode(response);
    return Endereco.fromJson(json);

  }

  // GET --> LIST
  Future<List<Endereco>> getEnderecos() async{
    List<Endereco> enderecos = [];
    http.Response response = await http.get(this.buildUri());

    dynamic json = this.decode(response);

    for( var obj in json){
      enderecos.add( Endereco.fromJson(obj) );
    }
    return enderecos;
  }

}