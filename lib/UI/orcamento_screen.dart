import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Orcamento extends StatefulWidget {
  @override
  _OrcamentoState createState() => _OrcamentoState();
}

class _OrcamentoState extends State<Orcamento> {
    String orcamento;
    var consumoMensal = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
    double valorKit  = 0;
    double engenheiro  = 0;
    double transporte  = 0;
    double art  = 0;
    double tecnico  = 0;
    double adaptacao = 0;
    double extras  = 0;
    //double   = 0;

  @override
  Widget build(BuildContext context) {

  double _fazerOrcamento(){
    print(consumoMensal.toString());
    double somaCosumoTMP = 1;
    consumoMensal.forEach((element) {
      somaCosumoTMP += element;
    });

    return somaCosumoTMP;
  }

    return Container(
      child: Padding(padding: EdgeInsets.all(28),
      child: ListView(
        children: [

          // Consumo
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.calendarOutline), hintText: 'Mês 1'),
              onChanged: (valor){
                consumoMensal[0] = double.parse(valor);
                print(consumoMensal[0]);
                },
              ),
              
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.calendarOutline), hintText: 'Mês 2'),
              onChanged: (valor){
                consumoMensal[1] = double.parse(valor);
                },
              ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.calendarOutline), hintText: 'Mês 3'),
              onChanged: (valor){
                consumoMensal[2] = double.parse(valor);
                },
              ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.calendarOutline), hintText: 'Mês 4'),
              onChanged: (valor){
                consumoMensal[3] = double.parse(valor);
                },
              ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.calendarOutline), hintText: 'Mês 5'),
              onChanged: (valor){
                consumoMensal[4] = double.parse(valor);
                },
              ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.calendarOutline), hintText: 'Mês 6'),
              onChanged: (valor){
                consumoMensal[5] = double.parse(valor);
                },
              ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.calendarOutline), hintText: 'Mês 7'),
              onChanged: (valor){
                consumoMensal[6] = double.parse(valor);
                },
              ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.calendarOutline), hintText: 'Mês 8'),
              onChanged: (valor){
                consumoMensal[7] = double.parse(valor);
                },
              ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.calendarOutline), hintText: 'Mês 9'),
              onChanged: (valor){
                consumoMensal[8] = double.parse(valor);
                },
              ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.calendarOutline), hintText: 'Mês 10'),
              onChanged: (valor){
                consumoMensal[9] = double.parse(valor);
                },
              ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.calendarOutline), hintText: 'Mês 11'),
              onChanged: (valor){
                consumoMensal[10] = double.parse(valor);
                },
              ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.calendarOutline), hintText: 'Mês 12'),
              onChanged: (valor){
                consumoMensal[11] = double.parse(valor);
                },
              ),


          Divider(),

          // Valores
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(Icons.person), hintText: 'Valor do Kit'),
              onChanged: (valor){
                setState(() {
                  valorKit = double.parse(valor);
                  print(valorKit);
                });
              },
            ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                InputDecoration(icon: Icon(Icons.person), hintText: 'Engenheiro'),
              onChanged: (valor){
                setState(() {
                  engenheiro = double.parse(valor);
                });
              },
          ),

          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(Icons.person), hintText: 'Transporte'),
              onChanged: (valor){
                setState(() {
                  transporte = double.parse(valor);
                });
              },
          ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(Icons.person), hintText: 'ART'),
              onChanged: (valor){
                setState(() {
                  art = double.parse(valor);
                });
              },
          ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(Icons.person), hintText: 'Técnico'),
              onChanged: (valor){
                setState(() {
                  tecnico = double.parse(valor);
                });
              },
          ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(Icons.person), hintText: 'Adaptacao p'),
              onChanged: (valor){
                setState(() {
                  adaptacao = double.parse(valor);
                });
              },
          ),
          TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(EvaIcons.externalLinkOutline), hintText: 'Extras'),
              onChanged: (valor){
                setState(() {
                  extras = double.parse(valor);
                });
              },
          ),

          SizedBox(height: 15,),
            Divider(),
            orcamento !=null ? Text(orcamento, style: TextStyle(
              fontSize: 30
            ),
            ) : Container(),

          SizedBox(height: 15,),
          FlatButton(
            color: Colors.amber,
            splashColor: Colors.deepOrange,
            onPressed: (){
              print('Valor dos campos de mes: ${_fazerOrcamento()}');
              print(valorKit + engenheiro + art + adaptacao + extras + tecnico+ transporte); 
              setState(() {
                orcamento = 'R\$ 85.000';
              });
            },
            child: Text('ORÇAMENTAR')),
        ],
      ),
      ),
    );
  }
}
