import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuantro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = List<Widget>();

    for (var opt in opciones) {
      final tempWidget = ListTile(title: Text(opt),);
      lista..add(tempWidget)
           ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((e) => Column(
      children: <Widget>[
        ListTile(
          title: Text('$e!'),
          subtitle: Text('Otra cosa'),
          leading: Icon(Icons.account_balance_wallet),
          trailing: Icon(Icons.arrow_right),
          onTap: () {},
          ),
          Divider(),
      ],
    )).toList();
  }
}
