//Descripcion(corta descripcion
//ubicacion
//foto
import 'package:flutter/material.dart';

import '../../app.dart';

class Incidencia extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _opcionSeleccionada = 'Incidencia';
  List<String> _poderes = ['No hay lampara de luz', 'Cable roto', 'Otro'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reportar incidentes'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearDropdown(),
          Divider(),
          _crearubicacion(),
          Divider(),
          _crearfoto(),
          Divider(),
          _crearInput(),
          Divider(),
          _crearcedula(),
          Divider(),
          _crearTelefono(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearenviar(),
        ],
      ),
    );
  }

  _crearubicacion() {
    return Form(
        child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 35),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          ),
          onPressed: () {},
          color: Colors.lightBlue,
          padding: EdgeInsets.only(left: 132.0, right: 132, top: 5, bottom: 5),
          child: Text('Ubicacion',
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
    ]));
  }

  _crearfoto() {
    return Form(
        child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 35),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          ),
          onPressed: () {},
          color: Colors.lightBlue,
          padding: EdgeInsets.only(left: 132.0, right: 132, top: 5, bottom: 5),
          child:
              Text('Foto', style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
    ]));
  }

  Widget _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Otro Incidente',
          labelText: 'Otro Incidente',
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        setState(() {});
      },
    );
  }

  Widget _crearcedula() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Cedula de la persona',
          labelText: 'Cedula',
          icon: Icon(Icons.branding_watermark)),
      onChanged: (valor) {
        setState(() {});
      },
    );
  }

  _crearTelefono() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'telefono de la persona',
          labelText: 'Telefono',
          icon: Icon(Icons.add_call)),
      onChanged: (valor) {
        setState(() {});
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Password',
            labelText: 'Password',
            icon: Icon(Icons.lock)),
        onChanged: (valor) => setState(() {}));
  }

  Widget _crearenviar() {
    return Form(
        child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          ),
          onPressed: () {
            runApp(MyApp0());
          },
          color: Colors.blue,
          padding: EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
          child: Text('Registrarte',
              style: TextStyle(color: Colors.white, fontSize: 25)),
        ),
      ),
    ]));
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
  }

  Widget _crearDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            value: _opcionSeleccionada,
            items: getOpcionesDropdown(),
            onChanged: (opt) {
              setState(() {
                _opcionSeleccionada = opt;
              });
            },
          ),
        )
      ],
    );
  }
}
