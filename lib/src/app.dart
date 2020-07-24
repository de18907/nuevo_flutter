import 'package:flutter/material.dart';
import 'package:flutter_vscode/src/pages/Noticia/noticias.dart';
import 'package:flutter_vscode/src/pages/login/login.dart';
import 'package:flutter_vscode/src/pages/prueba/contador_page.dart';

class MyApp0 extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Nuevo(),
      ),
    );
  }
}

class Pruebas extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Noticia(),
      ),
    );
  }
}
