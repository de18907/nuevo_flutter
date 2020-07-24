import 'package:flutter/material.dart';
import 'package:flutter_vscode/src/pages/login/incidentes.dart';
import 'package:flutter_vscode/src/pages/login/input_page.dart';
import 'package:flutter_vscode/src/pages/login/login.dart';

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
        child: InputPage(),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Incidencia(),
      ),
    );
  }
}
