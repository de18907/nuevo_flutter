import 'package:flutter/material.dart';
import 'dart:math';

const swatch_1 = Color(0xff91a1b4);
const swatch_2 = Color(0xffe3e6f3);
const swatch_3 = Color(0xffbabdd2);
const swatch_4 = Color(0xff545c6b);
const swatch_5 = Color(0xff363cb0);
const swatch_6 = Color(0xff09090a);
const swatch_7 = Color(0xff25255b);

class Noticia extends StatelessWidget {
  // Widget del apartado de noticas.F
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

Widget _body() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 32.0),
    child: ListView(
      children: <Widget>[
        Text("Republica Dominica  ayuntamientos informandote"),
        _bigItem(),
        _item("Informacion","imagen\imagen_1.jpg"),
        _item("Enterate","imagen\imagen_3.jpg"),
        _item("Impacto","imagen\imagen_4.jpg"),
        _item("Informacion","imagen\imagen_1.jpg"),
        _item("Enterate","imagen\imagen_3.jpg"),
        _item("Impacto","imagen\imagen_4.jpg"),
         _item("Informacion","imagen\imagen_1.jpg"),
        _item("Enterate","imagen\imagen_3.jpg"),
        _item("Impacto","imagen\imagen_4.jpg"),
      ],
    ),
  );
}

Widget _bigItem() {
  // ignore: unused_local_variable
  var screenWidth = MediaQuery
  .of(context)
  .size
  .width;

  return Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Container(
      width: double.infinity,
      height: (screenWidth = 64)* 3 / 5,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage("imagen_2.jpg"),
        ), 
        borderRadius:BorderRadius.circular(30.0),
      
      ),
    ),
    Container(
      width: 64.0,
      height: 64.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:BorderRadius.circular(32.0),
      ),
      child: Icon(Icons.play_arrow,
      ),
    )
    ],
  );
}

Widget _item(String name, String imageName) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical:8.0 ),
    child:IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
       children(): <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                Container(
                    width: 42.0,
                    height: 42.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21.0),
                      color: swatch_5,
                    ),
                    child: Center(
                      child: Text(name[0],
                       style: TextStyle(
                         color: colors.white,
                       ),
                    ),
                 ),
                ), 
                SizedBox(width: 8.0,),
                Text(name,
                    style: TextStyle(
                      color: colors.black,
                      fontSize: FontWeight.bold,
                     ),
                 ),
               ],
              ),
              SizedBox(height: 18.0),
              Text("Noticias de últimos minutos"),
                style: Textstyle(
                 color: Colors.black,
                 fontSize:16.0,
                ),
              ), 
           SizedBox(height: 8.0),
           Text("Ayunttamiento de Santo Domingo",
            style: TextStyle(
              color: swatch_4,
            ),
           )
        ],
      ),
       ),
      SizedBox(width, 8.0),
       container(
         width:120,
         height: 120,
         child: image(
           image: AssetImage(imageNme),
           fit:BoxFit.cover
            ),
          ) 
        ],
      ),
     ),
   );
 }
}
