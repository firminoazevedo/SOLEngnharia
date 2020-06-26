import 'package:flutter/material.dart';

class InstalacoesScreen extends StatefulWidget {
  @override
  _InstalacoesScreenState createState() => _InstalacoesScreenState();
}

class _InstalacoesScreenState extends State<InstalacoesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              RaisedButton(
                                splashColor: Colors.orange,
                                color: Colors.deepOrange,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.arrow_back, size: 15,),
                                    Text('Voltar'),
                                  ],
                                ),
                              onPressed: (){
                                Navigator.pop(context);
                              })
                            ],
                          ),
                          
                          Text(
                            'São domingos do Maranhão - MA',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),

                          Text(
                                '46 kwp',
                                style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                          SizedBox(height: 10,),
                          SingleChildScrollView(
                            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet volutpat ex. In hac habitasse platea dictumst. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin id massa posuere erat auctor iaculis. Phasellus sed ante mi. Morbi ultricies, libero eget tempus blandit, leo turpis facilisis odio, non porta ipsum tellus fringilla nibh. In hac habitasse platea dictumst.'
                              ,style: TextStyle(
                                color: Colors.grey[400]
                              ),
                            ),
                          )
                        ],
                      ), 
                    ),
                  ),
                )),
          ],
        ));
  }
}
