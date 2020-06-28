import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            child: Text('A'),
          ),
          Text('Vendas realizadas: 0'),
          Text('Vendas em andamento: 0'),
          Text('Aurindo'),
          Text('Neto'),
        ],
      ),
    );
  }
}