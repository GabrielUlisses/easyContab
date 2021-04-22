import 'Abstract.dart';

class Endereco extends Abstract{
  String estado, uf, cep, cidade, bairro, logradouro, numero, complemento, latitude, longitude;

  Endereco(
    int id, 
    { 
      this.estado, this.uf, this.cep, this.cidade, this.bairro, this.logradouro, 
      this.numero, this.complemento, this.latitude, this.longitude
    }
  ) : super(id: id);

  Endereco.fromJson( Map<String, dynamic> json ) {
    this.id = json['id'];
    this.estado = json['estado'];
    this.uf = json['uf'];
    this.cep = json['cep'];
    this.cidade = json['cidade'];
    this.bairro = json['bairro'];
    this.logradouro = json['logradouro'];
    this.numero = json['numero'];
    this.complemento = json['complemento'];
    this.latitude = json['latitude'];
    this.longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() => {
    'id' : this.id,
    'estado' : this.estado,
    'uf' : this.uf,
    'cep' : this.cep,
    'cidade' : this.cidade,
    'bairro' : this.bairro,
    'logradouro' : this.logradouro,
    'numero' : this.numero,
    'complemento' : this.complemento,
    'latitude' : this.latitude,
    'longitude' : this.longitude,
  };

  @override
  String toString() => "${this.logradouro}, ${this.bairro}, ${this.cidade} - ${this.uf}";
}