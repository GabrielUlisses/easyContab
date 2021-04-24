import 'package:meta/meta.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class AbstractService{
  Encoding encoding;
  String prefix, host, path;
  Map<String, String> queryParams;

  AbstractService({ this.prefix = "http://", @required this.host, this.path, this.queryParams, Encoding encoding }) : this.encoding = encoding ?? Encoding.getByName('utf-8') ;

  Uri buildUri([ String extra_params ]){
    
    String baseUrl = "${this.prefix}${this.host}/${this.path}/${extra_params ?? ''}";
    return Uri.parse(baseUrl);
  }

  Map<String, String> getHeader() => {
    "Content-Type": "application/json; charset=utf-8",
  };

  dynamic decode(http.Response response) => json.decode(utf8.decode(response.bodyBytes));

}