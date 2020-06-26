import 'package:flutter/material.dart';
import 'package:solbd/Animation/FadeAnimation.dart';
import 'package:solbd/UI/instalacoesScreen.dart';

class CardInstalacoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(1.4, Card(
            color: Colors.transparent,
            elevation: 24,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.black,
              ),
              height: 118,
              padding: EdgeInsets.only(
                left: 8,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Economia mensal:',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          'R\$ 7.000',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(
                          height: 4,
                        ),

                        // Texto Descrição do Sistema
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 12,
                            ),
                            Text(
                              'São Domingos do Maranhão - MA',
                              style: TextStyle(fontSize: 8, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '46kwp',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () { 
                                Navigator.of(context).pushReplacement(MaterialPageRoute(
                                  builder: (context) => InstalacoesScreen(),
                                ));
                               },
                              icon: Icon(
                                Icons.arrow_forward,
                                size: 17,
                              ),
                             ),
                          ],
                        )
                      ],
                    ),
                  )),

                  // Imagem do sistema
                  Expanded(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://images.pexels.com/photos/2850347/pexels-photo-2850347.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                      fit: BoxFit.fitHeight,
                    ),
                  )),
                ],
              ),
            ),
    ));
  }
}