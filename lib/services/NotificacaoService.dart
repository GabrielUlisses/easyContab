import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:easycontab/models/Notificacao.dart';
import 'AbstractService.dart';

class NotificacaoService extends AbstractService {

  NotificacaoService({ encoding, prefix, @required host, path, queryParams}) 
  : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );
  //({ encoding, prefix, host, path, queryParams}) : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );

  // GET
  Future<Notificacao> getNotificacao(int id) async{
    http.Response response = await http.get( this.buildUri(id.toString()) );
    
    dynamic json = this.decode(response);
    return Notificacao.fromJson(json);

  }

  // GET --> LIST
  Future<List<Notificacao>> getNotificacoes() async{
    List<Notificacao> notificacoes = [];
    http.Response response = await http.get(this.buildUri());

    dynamic json = this.decode(response);

    for( var obj in json){
      notificacoes.add( Notificacao.fromJson(obj) );
    }
    return notificacoes;
  }

}