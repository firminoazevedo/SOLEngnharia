class Instalacoes {

  String id;
  String nome = '';
  String descricao = '';
  String preco = '';

  Instalacoes({this.id, this.nome, this.preco, this.descricao});

  factory Instalacoes.fromJson(Map<String, dynamic> json ){
    return Instalacoes(
      id: json['id_kit'],
      nome: json['nome_kit'],
      descricao:  json['desc_kit'],
      preco: json['preco']
      );
  }

}