
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'AbstractService.dart';
import 'dart:convert';

class AuthService extends AbstractService {

  AuthService({ encoding, prefix, @required host, path, queryParams}) 
  : super( prefix: prefix, host: host, path: path, queryParams: queryParams, encoding: encoding );
  
  Future<Map<String, dynamic>> login([ String email, String senha ]) async {
    http.Response response = await http.post( 
      this.buildUri("login"),
      headers: this.getHeader(),
      body: json.encode({ 'email': email, 'password': senha})
    );
    dynamic data = this.decode(response);
    return data;
  }

  Future<Map<String, dynamic>> confirm([ String token ]) async {
    http.Response response = await http.post( 
      this.buildUri("confirm"),
      headers: this.getHeader(),
      body: json.encode({ 'token': token })
    );
    dynamic data = this.decode(response);
    return data;
  }

}