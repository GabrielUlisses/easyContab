
import 'Abstract.dart';
import 'Endereco.dart';

class Contador extends Abstract{
  String nrCrc, nrContato;
  Endereco endereco;

  Contador(
    int id,
    {
     this.nrCrc, this.nrContato, this.endereco 
    }
  ) : super(id: id);

  Contador.fromJson(Map<String, dynamic> json){
    this.id = json["id"];
    this.nrCrc = json['nome'];
    this.nrContato = json['login'];
    this.endereco = Endereco(json['endereco']['id']);
  }

  Map<String, dynamic> toJson() => {
    'id': this.id,
    'nr_crc': this.nrCrc,
    'nr_contato': this.nrContato,
    'endereco_id': this.endereco.id,
  };

  @override 
  String toString() => this.nrCrc;

}