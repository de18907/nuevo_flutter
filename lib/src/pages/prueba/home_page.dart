import 'package:flutter/material.dart';
import 'package:flutter_vscode/src/poviders/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    print(menuProvider.opciones);

    return ListView(
      children: _listaItems(),
    );
  }

  List<Widget> _listaItems() {
    return [
      ListTile(title: Text('Hola mundo')),
      Divider(color: Colors.grey[600]),
      ListTile(title: Text('Hola mundo')),
      Divider(color: Colors.grey[600]),
      ListTile(title: Text('Hola mundo')),
    ];
  }
}
