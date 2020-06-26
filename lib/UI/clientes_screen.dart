import 'package:flutter/material.dart';

class ClientesScreen extends StatefulWidget {
  @override
  _ClientesScreenState createState() => _ClientesScreenState();
}

class _ClientesScreenState extends State<ClientesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
      children: [

        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('EM ANDAMENTO', style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20
          ),),
        ),

        Divider(),

        ListTile(
          title: Text('Derlande', 
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22
          ),),
          subtitle: Text('Supermercado Freitas'),
        ),
        ListTile(
          title: Text('Derlande', 
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22
          ),),
          subtitle: Text('Supermercado Freitas'),
        ),
        ListTile(
          title: Text('Derlande', 
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22
          ),),
          subtitle: Text('Supermercado Freitas'),
        ),

        Divider(),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('CONCLUÍDOS', style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20
          ),),
        ),
        Divider(),

        ListTile(
          title: Text('Gladson', 
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22
          ),),
          subtitle: Text('Supermercado Santos'),
        ),
        ListTile(
          title: Text('Gladson', 
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22
          ),),
          subtitle: Text('Supermercado Santos'),
        ),
        ListTile(
          title: Text('Gladson', 
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22
          ),),
          subtitle: Text('Supermercado Santos'),
        ),


      ],
      ),
    );
  }
}