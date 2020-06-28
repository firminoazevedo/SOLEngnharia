import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:solbd/UI/clientes_screen.dart';
import 'package:solbd/UI/orcamento_screen.dart';
import 'package:solbd/UI/profile_screen.dart';
import 'package:solbd/components/cardInstalacoes.dart';

import 'login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController;
  int _indexPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  double get w => MediaQuery.of(context).size.width;
  ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    accentColor: Colors.orange,
    primaryColor: Colors.purple,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _darkTheme,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Aurindo'),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
                },
                child: Icon(EvaIcons.logOut)),
                
          ],
        ),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30),
                  CardInstalacoes(),
                  CardInstalacoes(),
                  CardInstalacoes(),
                  CardInstalacoes(),
                ],
              ),
            ),
            
            Dismissible(
              key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
              background: Container(
                color: Colors.red,
                child: Align(
                  alignment: Alignment(-0.9, 0.0),
                  child: Icon(Icons.delete, color: Colors.white),
                ),
              ),
              direction: DismissDirection.startToEnd,
              child: CheckboxListTile(
                title: Text("Nome"),
                value: true,
                secondary: CircleAvatar(
                  child: Icon(Icons.check),
                ), onChanged: (bool value) {  },
                
              ),
              onDismissed: (direction) {
              },
            ),
            ClientesScreen(),
            Orcamento(),
            ProfileScreen()
          ],
        ),

        // Bottom Navigation
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _indexPage,
            onTap: (page) {
              setState(() {
                _indexPage = page;
              });
              _pageController.animateToPage(page,
                  duration: Duration(seconds: 1), curve: Curves.decelerate);
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.format_align_justify), title: Text('Kits')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.group), title: Text('Clientes')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grid_on), title: Text('Orçamento')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), title: Text('Minha Conta')),
            ]),
      ),
    );
  }
}
