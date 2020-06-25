import 'package:flutter/material.dart';
import 'package:solbd/Services.dart';
import 'package:solbd/UI/login.dart';
import 'package:solbd/models/instalacoes.dart';
//import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ThemeData _darkTheme = ThemeData(
      brightness: Brightness.dark,
      accentColor: Colors.orange,
      primaryColor: Colors.purple,
    );

    List<Instalacoes> _instalacoesList;

    List<Instalacoes> _getInstalacaoes() {
      Services.listarInstalacoes().then((instalacoes) {
         _instalacoesList = instalacoes;
      });
      return _instalacoesList;
    }

    _instalacoesList = _getInstalacaoes();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _darkTheme,
      home: LoginPage() 
    );
  }
}
