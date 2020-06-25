import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:solbd/Animation/FadeAnimation.dart';
import 'package:solbd/UI/home_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {

  static const ROOT = 'http://10.0.0.113/sol/login.php';
  final TextEditingController _emailController = TextEditingController();
  final  TextEditingController _senhaController = TextEditingController();
  bool isLogged = false;

  Future login() async {
    final response = await http.post(ROOT,
      body: {"username": _emailController.text, "password": _senhaController.text});
    var datauser = json.decode(response.body).cast<Map<String, dynamic>>();
    if (datauser.length==0){
        print('Email ou senha incorreto');
    } else {
        print('Logou');
        print(datauser);
        setState(() {
          isLogged = true;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: NetworkImage(
                'https://pontoon-e.com/wp-content/uploads/2018/08/pexels-photo-421888-3-1920x1080.jpeg',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop)),
        ),
        padding: EdgeInsets.all(25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  child: Image.network(
                      'http://solengenharia.net.br/sol/wp-content/uploads/2020/01/cropped-logo_sol-1.png'),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: Text(
                    'SOL Login',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),

                // Campo de EMAIL
                FadeAnimation(1.2, 
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: TextField(
                    controller: _emailController,
                    textInputAction: TextInputAction.none,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        // hintText: 'Enter your product title',
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Seu email'),
                    onChanged: (String value) {
                      setState(() {});
                    },
                  ),
                )),

                SizedBox(
                  height: 25,
                ),

                // Campo de SENHA
                FadeAnimation(1.2,
                TextField(
                  controller: _senhaController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      // hintText: 'Enter your product description',
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Senha'),
                  onChanged: (String value) {
                    setState(() {});
                  },
                )),

                // Esqueceu sua senha?
                FadeAnimation(1.4,
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(top: 25, right: 5),
                    child: Text(
                      'Esqueceu sua senha ?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),

                SizedBox(
                  height: 25,
                ),

                // Botão de logar
                FadeAnimation(1.2,
                FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      side: BorderSide(color: Colors.white)),
                  padding: EdgeInsets.only(left: 50, right: 50),
                  // color: Theme.of(context).buttonColor,
                  textColor: Colors.white,
                  child: Text('Login'),
                  onPressed: () {
                    login();
                    Future.delayed(Duration(seconds: 3));

                    if (1 == 1) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
                    } else {
                      print('Não entrou');
                    }
                  },
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
