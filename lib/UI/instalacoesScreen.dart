import 'package:flutter/material.dart';

class InstalacoesScreen extends StatefulWidget {
  @override
  _InstalacoesScreenState createState() => _InstalacoesScreenState();
}

class _InstalacoesScreenState extends State<InstalacoesScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40)),
                  child: Image.network(
                    'https://images.pexels.com/photos/2850347/pexels-photo-2850347.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(40))),
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'R\$ 7.000',
                                  style: TextStyle(
                                    fontSize: 36,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '46 kwp',
                                  style: TextStyle(
                                    fontSize: 36,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'São domingos do Maranhão - MA',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w300,
                              ),
                            ),

                            
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          )),
    );
  }
}
