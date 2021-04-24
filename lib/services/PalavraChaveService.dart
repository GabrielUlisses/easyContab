import 'package:easycontab/models/PalavraChave.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'AbstractService.dart';

class PalavraChaveService extends AbstractService{

  PalavraChaveService({ encoding, prefix, @required host, path, queryParams}) 
  : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );

  Future<PalavraChave> getPalavraChave(int id) async {
    http.Response response = await http.get(this.buildUri(id.toString()));
    dynamic json = this.decode(response);

    return PalavraChave.fromJson(json);
  }

  Future<List<PalavraChave>> getPalavrasChaves() async {
    List<PalavraChave> palavrasChave = [];

    http.Response response = await http.get(this.buildUri());
    dynamic json = this.decode(response);

    for( var obj in json){
      palavrasChave.add( PalavraChave.fromJson(obj));
    }
    return palavrasChave;
  }
}