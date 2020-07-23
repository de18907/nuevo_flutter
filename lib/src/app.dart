import 'package:flutter/material.dart';
import 'package:flutter_vscode/src/pages/contador_page.dart';
import 'package:flutter_vscode/src/pages/login.dart';
import 'package:flutter_vscode/src/pages/noticia.dart';

class MyApp0 extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: Login(),
      ),
    );
  }
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: Noticia(),
      ),
    );
  }
}
