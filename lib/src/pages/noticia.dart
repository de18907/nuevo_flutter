import 'package:flutter/material.dart';

// paleta de color
//const color1 = Color(0xff91a1b4);
//const color2 = Color(0xffe3e6f3);
//const color3 = Color(0xffbabdd2);
//inicio de la pages

class Noticia extends StatelessWidget {
  // Widget del apartado de noticas.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'últimas'),
    );
  }
}
//.....................................

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//.....................................
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 32.0),
            //icono
            child: InkWell(
              child: Icon(
                Icons.share,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Container(),
    );
  }
}
