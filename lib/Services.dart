import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models/instalacoes.dart';

class Services{
  static const ROOT = 'http://10.0.0.113/sol/obterDados.php';

  static Future<List<Instalacoes>> listarInstalacoes() async{
    try {
      var map = Map<String, dynamic> ();
      map['action'] = "SELECT * FROM kit";
      final response = await http.post(ROOT, body: map);
      //print('Dados da consulta no banco Response: ${response.body}');
      if (200 == response.statusCode) {
        List<Instalacoes> list = parseResponse(response.body);
        return list;
      } else {
        return List<Instalacoes>();
      }
    } catch (e){
      print('Deu erro no try cat em Services.dart');
      print(e);
    }
    return List<Instalacoes>();
  }

  static List<Instalacoes> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Instalacoes>((json) => Instalacoes.fromJson(json)).toList();
  }

}